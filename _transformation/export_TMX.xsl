<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:strip-space elements="*"/>
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
    <tmx version="1.4">
        <header creationtool="NA"
            creationtoolversion="NA"
            datatype="XML"
            segtype="sub-sentence"
            adminlang="fr-FR"
            srclang="FRM"
            o-tmf="XML">
        </header>
        <body>
            <xsl:apply-templates/>
        </body>
    </tmx>
        
    </xsl:template>
    
    <xsl:template match="choice">
        <tu tuid="{parent::seg/@n}">
            <xsl:apply-templates/>
        </tu>
    </xsl:template>

    <xsl:template match="orig">
        <tuv xml:lang="FRM">
            <seg><xsl:apply-templates/></seg>
        </tuv>
    </xsl:template>
    
    <xsl:template match="reg">
        <tuv xml:lang="FR">
            <seg><xsl:apply-templates/></seg>
        </tuv>
    </xsl:template>
    
</xsl:stylesheet>