<?xml version="1.0"?>

<!--
 * ========================================================================
 * 
 * Copyright 2004 Carlos Sanchez.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * ========================================================================
-->

<!-- 

    Initially made by christian.bauer@bluemars.de for
    Hibernate project, main part of this document are copyright Christian Bauer.
    
-->

<!DOCTYPE xsl:stylesheet [
    <!ENTITY db_xsl         "docbook.xsl">
    <!ENTITY admon_gfx_path "images/admons/">
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                exclude-result-prefixes="#default">
                
<xsl:import href="&db_xsl;"/>


<!--###################################################
                   Custom Title Page
    ################################################### --> 
    
    <xsl:template name="book.titlepage.recto">
        <fo:block>
            <fo:table table-layout="fixed" width="150mm">
                <fo:table-column column-width="150mm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="center">
                            <fo:block>
                                <fo:external-graphic src="file:images/udc.gif"/>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="16pt" padding-before="5mm">
                                <xsl:text>UNIVERSIDADE DA CORUÑA</xsl:text>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="14pt" padding-before="2mm">
                                <xsl:text>FACULTADE DE INFORMÁTICA</xsl:text>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" font-style="italic" padding-before="2mm">
                                <xsl:text>Departamento de Tecnoloxías da Información e as Comunicacións</xsl:text>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="14pt" padding-before="5mm">
                                <xsl:text>PROYECTO FIN DE CARRERA DE INGENIERÍA INFORMÁTICA</xsl:text>
                            </fo:block>
                            <fo:block padding-before="20mm">
                                <fo:external-graphic src="file:images/logo.gif" width="90mm"/>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="22pt" padding-before="5mm">
                                <xsl:value-of select="bookinfo/title"/> 
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left">
                            <fo:block font-family="Helvetica" font-size="11pt" padding-before="30mm">
                                <xsl:text>Autor:</xsl:text>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="bookinfo/author/firstname"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="bookinfo/author/surname"/>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="11pt" padding-before="1mm">
                                <xsl:text>Director: Fernando Bellas Permuy</xsl:text>
                            </fo:block>
                            <fo:block font-family="Helvetica" font-size="11pt" padding-before="1mm">
                                <xsl:value-of select="bookinfo/releaseinfo"/> 
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>


    <xsl:template name="book.titlepage.verso">
        <fo:block>
            <fo:table table-layout="fixed" width="150mm">
                <fo:table-column column-width="50mm"/>
                <fo:table-column column-width="100mm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Título</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block>
                                <xsl:value-of select="bookinfo/title"/> 
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Clase</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left">
                            <fo:block>
                                <xsl:text>Proyecto clásico de ingeniería</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Autor</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left">
                            <fo:block>
                                <xsl:value-of select="bookinfo/author/firstname"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="bookinfo/author/surname"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Director</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left">
                            <fo:block>
                                <xsl:text>Fernando Bellas Permuy</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="60mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Tribunal</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left"/>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Fecha de lectura</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left"/>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" padding-after="10mm">
                            <fo:block font-family="Helvetica" font-size="11pt">
                                <xsl:text>Calificación</xsl:text>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left"/>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!--
    <xsl:template name="book.titlepage.separator">
    </xsl:template>
    -->
        
<!--###################################################
                      Header
    ################################################### -->  

    <!-- More space in the center header for long text -->
    <xsl:attribute-set name="header.content.properties">
        <xsl:attribute name="font-family">
            <xsl:value-of select="$body.font.family"/>
        </xsl:attribute>
        <xsl:attribute name="margin-left">-5em</xsl:attribute>
        <xsl:attribute name="margin-right">-5em</xsl:attribute>
    </xsl:attribute-set>

    
<!--###################################################
                      Extensions
    ################################################### -->  

    <!-- These extensions are required for table printing and other stuff -->
    <xsl:param name="use.extensions">1</xsl:param>
    <xsl:param name="tablecolumns.extension">0</xsl:param>
    <xsl:param name="callout.extensions">1</xsl:param>
    <!-- FOP provide only PDF Bookmarks at the moment -->
    <xsl:param name="fop.extensions">1</xsl:param>

<!--###################################################
                      Table Of Contents
    ################################################### -->   

    <!-- Show only Sections up to level 3 in the TOCs -->
    <xsl:param name="toc.section.depth">2</xsl:param>
    
    <!-- Dot and Whitespace as separator in TOC between Label and Title-->
    <xsl:param name="autotoc.label.separator" select="'.  '"/>

        
<!--###################################################
                   Paper & Page Size
    ################################################### -->  

    <!-- Paper type, no headers on blank pages, no double sided printing -->
    <xsl:param name="paper.type" select="'A4'"/>
    <xsl:param name="double.sided">0</xsl:param>
    <xsl:param name="headers.on.blank.pages">0</xsl:param>
    <xsl:param name="footers.on.blank.pages">0</xsl:param>

    <!-- Space between paper border and content (chaotic stuff, don't touch) -->
    <xsl:param name="page.margin.top">15mm</xsl:param>
    <xsl:param name="region.before.extent">10mm</xsl:param>
    <xsl:param name="body.margin.top">10mm</xsl:param>
    
    <xsl:param name="body.margin.bottom">15mm</xsl:param>
    <xsl:param name="region.after.extent">10mm</xsl:param>
    <xsl:param name="page.margin.bottom">15mm</xsl:param>

    <xsl:param name="page.margin.inner">40mm</xsl:param>
    <xsl:param name="page.margin.outer">20mm</xsl:param>

    <!-- No intendation of Titles -->
    <xsl:param name="title.margin.left">0pc</xsl:param>

<!--###################################################
                   Fonts & Styles
    ################################################### -->      

    <!-- Justified text and no hyphenation -->
    <!-- <xsl:param name="alignment">justify</xsl:param> -->
    <xsl:param name="hyphenate">false</xsl:param>

    <!-- Default Font size -->
    <xsl:param name="body.font.master">11</xsl:param>
    <xsl:param name="body.font.small">8</xsl:param>

    <!-- Line height in body text -->
    <xsl:param name="line-height">1.6</xsl:param>

    <!-- Monospaced fonts are smaller than regular text -->
    <xsl:attribute-set name="monospace.properties">
        <xsl:attribute name="font-family">
            <xsl:value-of select="$monospace.font.family"/>
        </xsl:attribute>
        <xsl:attribute name="font-size">0.8em</xsl:attribute>
    </xsl:attribute-set>
    
<!--###################################################
                   Tables
    ################################################### -->

    <!-- The table width should be adapted to the paper size -->
    <xsl:param name="default.table.width">15cm</xsl:param>

    <!-- Some padding inside tables -->    
    <xsl:attribute-set name="table.cell.padding">
        <xsl:attribute name="padding-left">4pt</xsl:attribute>
        <xsl:attribute name="padding-right">4pt</xsl:attribute>
        <xsl:attribute name="padding-top">4pt</xsl:attribute>
        <xsl:attribute name="padding-bottom">4pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!-- Only hairlines as frame and cell borders in tables -->
    <xsl:param name="table.frame.border.thickness">0.1pt</xsl:param>
    <xsl:param name="table.cell.border.thickness">0.1pt</xsl:param>
        
<!--###################################################
                         Labels
    ################################################### -->   

    <!-- Label Chapters and Sections (numbering) -->
    <xsl:param name="chapter.autolabel">1</xsl:param>
    <xsl:param name="section.autolabel" select="1"/>
    <xsl:param name="section.label.includes.component.label" select="1"/>

<!--###################################################
                         Titles
    ################################################### -->   
    
    <!-- Chapter title size -->
    <xsl:attribute-set name="chapter.titlepage.recto.style">
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.master * 1.8"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>        
    </xsl:attribute-set>

    <!-- Why is the font-size for chapters hardcoded in the XSL FO templates? 
        Let's remove it, so this sucker can use our attribute-set only... -->
    <xsl:template match="title" mode="chapter.titlepage.recto.auto.mode">
        <fo:block xmlns:fo="http://www.w3.org/1999/XSL/Format"
                  xsl:use-attribute-sets="chapter.titlepage.recto.style">
            <xsl:call-template name="component.title">
                <xsl:with-param name="node" select="ancestor-or-self::chapter[1]"/>
            </xsl:call-template>
            </fo:block>
    </xsl:template>
    
    <!-- Sections 1, 2 and 3 titles have a small bump factor and padding -->    
    <xsl:attribute-set name="section.title.level1.properties">
        <xsl:attribute name="space-before.optimum">0.8em</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.8em</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.master * 1.5"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.1em</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="section.title.level2.properties">
        <xsl:attribute name="space-before.optimum">0.6em</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.6em</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.6em</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.master * 1.25"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.1em</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="section.title.level3.properties">
        <xsl:attribute name="space-before.optimum">0.4em</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.4em</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.4em</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.master * 1.0"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.1em</xsl:attribute>
    </xsl:attribute-set>

    <!-- Titles of formal objects (tables, examples, ...) -->
    <xsl:attribute-set name="formal.title.properties" use-attribute-sets="normal.para.spacing">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.master"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="hyphenate">false</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
    </xsl:attribute-set>    

<!--###################################################
                      Programlistings
    ################################################### -->  
    
    <!-- Verbatim text formatting (programlistings) -->
    <xsl:attribute-set name="monospace.verbatim.properties">
        <xsl:attribute name="font-size">
            <xsl:value-of select="$body.font.small * 1.0"/>
            <xsl:text>pt</xsl:text>
        </xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="verbatim.properties">
        <xsl:attribute name="space-before.minimum">1em</xsl:attribute>
        <xsl:attribute name="space-before.optimum">1em</xsl:attribute>
        <xsl:attribute name="space-before.maximum">1em</xsl:attribute>
        <!-- alef: commented out because footnotes were screwed because of it -->
        <!--<xsl:attribute name="space-after.minimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.1em</xsl:attribute>-->
        <xsl:attribute name="border-color">#444444</xsl:attribute>
        <xsl:attribute name="border-style">solid</xsl:attribute>
        <xsl:attribute name="border-width">0.1pt</xsl:attribute>      
        <xsl:attribute name="padding-top">0.5em</xsl:attribute>      
        <xsl:attribute name="padding-left">0.5em</xsl:attribute>      
        <xsl:attribute name="padding-right">0.5em</xsl:attribute>      
        <xsl:attribute name="padding-bottom">0.5em</xsl:attribute>      
        <xsl:attribute name="margin-left">0.5em</xsl:attribute>      
        <xsl:attribute name="margin-right">0.5em</xsl:attribute>      
    </xsl:attribute-set>    

    <!-- Shade (background) programlistings -->    
    <xsl:param name="shade.verbatim">1</xsl:param>
    <xsl:attribute-set name="shade.verbatim.style">
        <xsl:attribute name="background-color">#F0F0F0</xsl:attribute>
    </xsl:attribute-set>
                    
<!--###################################################
                         Callouts
    ################################################### -->   

    <!-- Use images for callouts instead of (1) (2) (3) -->
    <xsl:param name="callout.graphics">0</xsl:param>
    <xsl:param name="callout.unicode">1</xsl:param>
    
    <!-- Place callout marks at this column in annotated areas -->
    <xsl:param name="callout.defaultcolumn">90</xsl:param>

<!--###################################################
                       Admonitions
    ################################################### -->   

    <!-- Use nice graphics for admonitions -->
    <xsl:param name="admon.graphics">'1'</xsl:param>
    <xsl:param name="admon.graphics.path">&admon_gfx_path;</xsl:param>

<!--###################################################
                          Misc
    ################################################### -->   

    <!-- Placement of titles -->
    <xsl:param name="formal.title.placement">
        figure after
        example before
        equation before
        table before
        procedure before
    </xsl:param>
    
    <!-- Format Variable Lists as Blocks (prevents horizontal overflow) -->
    <xsl:param name="variablelist.as.blocks">1</xsl:param>

    <!-- The horrible list spacing problems -->
    <xsl:attribute-set name="list.block.spacing">
        <xsl:attribute name="space-before.optimum">0.8em</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.8em</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.1em</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.1em</xsl:attribute>
    </xsl:attribute-set>
    
</xsl:stylesheet>
