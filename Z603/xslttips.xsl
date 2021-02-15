<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output indent="yes"/>
    
    <xsl:strip-space elements="yes"/>
    
    <xsl:template match="/">
        <xsl:variable name="tips1">
            <xsl:apply-templates mode="tips1" select="node()"/>
        </xsl:variable>
        <xsl:variable name="tips2">
            <xsl:apply-templates mode="tips2" select="$tips1"/>
        </xsl:variable>
        <xsl:copy-of select="$tips1"/>
    </xsl:template>
    
    <xsl:template mode="tips1" match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates mode="tips1" select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template mode="tips1" match="body">
        <xsl:copy>
            <xsl:apply-templates mode="tips1" select="h1"/>
            <xsl:call-template name="paragrapher">
                <xsl:with-param name="pString" select="p"/>
            </xsl:call-template>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template name="paragrapher">
        <xsl:param name="pString"/>
        <xsl:choose>
            <xsl:when test="contains($pString, '&#xA;')">
                <xsl:call-template name="paragrapher">
                    <xsl:with-param name="pString" select="substring-before($pString, '&#xA;')"/>
                </xsl:call-template>
                <!--<xsl:call-template name="paragrapher">
                    <xsl:with-param name="pString" select="substring-after($pString, '&#xA;')"/>
                </xsl:call-template>-->
            </xsl:when>
            <xsl:when test="normalize-space($pString)">
                <p><!--<xsl:value-of select="normalize-space($pString)"/>-->TEST</p>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <!--<xsl:template mode="tips2" match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates mode="tips2" select="node()|@*"/>
        </xsl:copy>
    </xsl:template>-->
    
    <!--<xsl:template mode="tips2" match="p">
        <h2><xsl:value-of select="substring-before(., ':')"/></h2>
        <xsl:copy>
            <xsl:value-of select="substring-after(., ': ')"/>
        </xsl:copy>
    </xsl:template>-->
</xsl:stylesheet>