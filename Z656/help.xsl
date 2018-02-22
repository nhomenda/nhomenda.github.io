<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:dcterms="http://purl.org/dc/terms/" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="rdf:RDF">
        <xsl:attribute name="about">
            <xsl:value-of select="@rdf:about"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="rdf:RDF/rdf:Description">
        <xsl:attribute name="dcterms:subject"><xsl:value-of select="dcterms:subject"/></xsl:attribute>
        <xsl:attribute name="dcterms:relation"><xsl:value-of select="dcterms:relation"/></xsl:attribute>
    </xsl:template>
</xsl:stylesheet>
