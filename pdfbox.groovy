@Grab('org.apache.pdfbox:pdfbox:1.8.10')
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.util.PDFTextStripper

import java.util.regex.Matcher

PDDocument document = PDDocument.load('./build/asciidoc/pdf/index.pdf')
PDFTextStripper stripper = new PDFTextStripper()
Map<String, Integer> figures = [:]

(1..document.numberOfPages + 1).each { int absolutePage ->
    int actualPage = absolutePage - 2
    stripper.setStartPage(absolutePage)
    stripper.setEndPage(absolutePage)

    String text = stripper.getText(document)

    text.readLines().parallelStream().filter{it.startsWith('Figure ')}.each { String figure ->
        Matcher matcher = figure =~ /^Figure \d+\. .*$/
        if (matcher.matches()) {
            figures[figure] = actualPage
        }
    }
}

if (figures) {
    StringBuilder sb = new StringBuilder()
    sb.append '''== List of figures

[cols="<15,>1", frame="none", grid="none"]
|===
'''
    figures.each { String figure, int page ->
        sb.append """|${figure}
|${page}
"""
    }

    String asciidoctorText = sb.append('|===')toString()

    println asciidoctorText
    //TODO generate PDF from asciidoctorText
    //TODO append PDF at the end of the main one
}