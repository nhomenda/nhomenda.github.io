<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:variable name="catcount">
        <xsl:value-of select="count(//cat_record)"/>
    </xsl:variable>
    
    <xsl:template match="neko_cats">
        <html>
            <head>
                <title>Transformed XML into HTML</title>
            </head>
            <body>
                <xsl:apply-templates select="cat_record">
                    <xsl:sort select="power_level" data-type="number" order="descending"/>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="cat_record">
        <div>
            <h2>Cat Picture</h2>
            <xsl:call-template name="image">
                <xsl:with-param name="link" select="cat_picture"/>
            </xsl:call-template>
            <xsl:apply-templates/>
            <h2>Memento Picture</h2>
            <xsl:call-template name="image">
                <xsl:with-param name="link" select="memento_picture"/>
            </xsl:call-template>
            <p><xsl:value-of select="concat(position(), ' of ', $catcount, ' cats!')"/></p>
            <hr/>
        </div>
    </xsl:template>
    
    <xsl:template name="image">
        <xsl:param name="link"/>
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="$link"/>
            </xsl:attribute>
            <xsl:attribute name="width">100</xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="name|color|personality">
        <h2><xsl:value-of select="concat(translate(substring(local-name(), 1, 1), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), substring(local-name(), 2))"/></h2>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="power_level">
        <h2>Power Level</h2>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="cat_picture|memento_picture"/>
    
</xsl:stylesheet>