package com.github.alvarosanchez

import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.util.PDFTextStripper
import org.asciidoctor.Asciidoctor
import org.gradle.api.DefaultTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.InputFile
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.TaskAction

import java.util.regex.Matcher

import static org.asciidoctor.OptionsBuilder.options
import static org.asciidoctor.Asciidoctor.Factory.create

class GenerateListsTask extends DefaultTask {

    @InputFile
    File source

    @OutputFile
    File destination

    @TaskAction
    void generate() {
        PDDocument document = PDDocument.load(source)
        PDFTextStripper stripper = new PDFTextStripper()
        Map<String, Integer> figures = [:]
        Map<String, Integer> tables = [:]

        (1..document.numberOfPages + 1).each { int absolutePage ->
            int actualPage = absolutePage - 1
            stripper.setStartPage(absolutePage)
            stripper.setEndPage(absolutePage)

            String text = stripper.getText(document)

            text.readLines().each { String line ->
                Matcher figMatcher = line =~ /^Figure \d+\. .*$/
                Matcher tableMatcher = line =~ /^Table \d+\. .*$/
                if (figMatcher.matches()) {
                    figures[line] = actualPage
                } else if (tableMatcher.matches()) {
                    tables[line] = actualPage
                }
            }
        }

        StringBuilder sb = new StringBuilder()
        generateList('figures', sb, figures)
        generateList('tables', sb, tables)

        destination.append(sb.toString())

    }

    private void generateList(String block, StringBuilder asciidoctorText, Map<String, Integer> elements) {
        if (elements) {
            asciidoctorText.append """\n\n== List of ${block}

[cols="<15,>1", frame="none", grid="none"]
|===
"""
            elements.each { String element, int page ->
                asciidoctorText.append """|${element}
|${page}
"""
            }

            asciidoctorText.append('|===\n')
        }
    }
}
