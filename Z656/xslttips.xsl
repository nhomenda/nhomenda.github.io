<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:variable name="idno">
        <xsl:value-of select="substring-after(h1, '#')"/>
    </xsl:variable>
    
    <xsl:template name="paragrapher">
        <xsl:param name="pString"/>
        <xsl:choose>
            <xsl:when test="contains($pString, '&#xA;')">
                <xsl:call-template name="paragrapher">
                    <xsl:with-param name="pString" select="substring-before($pString, '&#xA;')"/>                
                </xsl:call-template>
                <xsl:call-template name="paragrapher">
                    <xsl:with-param name="pString" select="substring-after($pString, '&#xA;')"/>                
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="normalize-space($pString)">
                <p><xsl:value-of select="normalize-space($pString)"/></p>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:copy>
            <xsl:apply-templates select="h1"/>
            <xsl:call-template name="paragrapher">
                <xsl:with-param name="pString" select="p"/>
            </xsl:call-template>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>