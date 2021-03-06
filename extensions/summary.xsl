<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="extensions" />

<xsl:template name="output-summaries">
    <xsl:param name="list" /> 
    <xsl:variable name="car" select="substring-before($list, ',')" /> 
    <xsl:variable name="cdr" select="substring-after($list, ',')" /> 
    
    <xsl:apply-templates select="document(concat($car,'/extension.xml'))" />
    
    <xsl:if test="$cdr">
      <xsl:call-template name="output-summaries">
        <xsl:with-param name="list" select="$cdr" /> 
      </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template match="comment()"><xsl:copy /></xsl:template>

<xsl:template match="registry">
  <xsl:comment>AUTOGENERATED FILE - DO NOT EDIT - SEE Makefile</xsl:comment>
  <registry>
    <xsl:call-template name="output-summaries">
      <xsl:with-param name="list" select="concat($extensions,',')"/>
    </xsl:call-template>
  </registry>
</xsl:template>

<xsl:template match="extension|draft">
  <xsl:copy>
    <xsl:copy-of select="@href" />
    <xsl:copy-of select="name"/>
    <xsl:copy-of select="number"/>
    <history>
      <xsl:for-each select="history/revision">
        <xsl:sort select="@date"/>
        <xsl:copy>
          <xsl:copy-of select="@*"/>
          <xsl:attribute name="number">
            <xsl:value-of select="position()"/>
          </xsl:attribute>
          <xsl:copy-of select="node()"/>
        </xsl:copy>
      </xsl:for-each>
    </history>
  </xsl:copy>
</xsl:template>
  
</xsl:stylesheet>
