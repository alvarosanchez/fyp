package com.github.alvarosanchez

import org.apache.pdfbox.util.PDFMergerUtility
import org.gradle.api.DefaultTask
import org.gradle.api.file.FileCollection
import org.gradle.api.tasks.InputFiles
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.TaskAction

class MergePdfsTask extends DefaultTask {

    @InputFiles
    FileCollection sources

    @OutputFile
    File destination

    @TaskAction
    void merge() {
        PDFMergerUtility merger = new PDFMergerUtility()
        sources.each { File source ->
            merger.addSource(source)
        }

        merger.setDestinationFileName(destination.absolutePath)
        merger.mergeDocuments()
    }
}
