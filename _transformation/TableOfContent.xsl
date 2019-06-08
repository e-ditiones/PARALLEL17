<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:variable name="xmlDocuments" select="collection('../corpus_tei/?select=*.xml;recurse=yes')"/>
  
    <xsl:template match="/">
        <xsl:text>Auteur</xsl:text>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>Titre</xsl:text>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>Date</xsl:text>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>Lieu</xsl:text>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>Tokens (c.)</xsl:text>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>Lien</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="$xmlDocuments">
            <xsl:value-of select="//titleStmt/author"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="//titleStmt/title"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="//sourceDesc/bibl/date"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="//sourceDesc/bibl/pubPlace"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="//extent"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="//sourceDesc/bibl/ptr/@target"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>

    </xsl:template>
    
</xsl:stylesheet>
