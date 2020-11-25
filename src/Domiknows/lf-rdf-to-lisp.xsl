<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:role="http://www.cs.rochester.edu/research/trips/role#"
    xmlns:TMA="http://www.cs.rochester.edu/research/trips/TMA#"
    xmlns:LF="http://www.cs.rochester.edu/research/trips/LF#">
<!--
lf-rdf-to-lisp.xsl - convert an LF in RDF format, as output by lf-to-rdf back to lisp (based on ../WebParser/lf-to-html.xsl)
William de Beaumont
2020-06-18
  -->    

<xsl:output method="text" encoding="UTF-8" />

<!-- don't copy text or attribute nodes by default -->
<xsl:template match="text()|@*" priority="-1" />

<!-- but do copy text nodes that aren't just whitespace, and assume they're ONT symbols, unless they're lists -->
<xsl:template match="text()[normalize-space(.) != '']">
 <xsl:if test="not(starts-with(.,'('))">
  <xsl:text>ONT::</xsl:text>
 </xsl:if>
 <xsl:value-of select="." />
</xsl:template>

<xsl:template name="id">
 <xsl:param name="id" />
 <xsl:text>ONT::</xsl:text>
 <xsl:value-of select="$id" />
</xsl:template>

<xsl:template match="@rdf:resource">
 <xsl:call-template name="id">
  <xsl:with-param name="id" select="substring(.,2)" />
 </xsl:call-template>
</xsl:template>

<xsl:template match="@rdf:ID">
 <xsl:call-template name="id">
  <xsl:with-param name="id" select="." />
 </xsl:call-template>
</xsl:template>

<xsl:template match="LF:indicator">
 <xsl:text>ONT::</xsl:text><xsl:value-of select="." />
</xsl:template>

<xsl:template match="LF:type">
 <xsl:text>ONT::</xsl:text><xsl:value-of select="." />
</xsl:template>

<xsl:template match="LF:word">
 <xsl:text>W::</xsl:text><xsl:value-of select="." />
</xsl:template>

<xsl:template match="LF:start | LF:end">
 <xsl:text> :</xsl:text><xsl:value-of select="local-name()" />
 <xsl:text> </xsl:text><xsl:value-of select="." />
</xsl:template>

<xsl:template match="role:WNSENSE">
 <xsl:text> :WNSENSE "</xsl:text>
 <xsl:value-of select="." />
 <xsl:text>"</xsl:text>
</xsl:template>

<xsl:template match="role:LEX">
 <xsl:text> :LEX W::</xsl:text>
 <xsl:value-of select="." />
</xsl:template>

<xsl:template match="role:*">
 <xsl:text> :</xsl:text><xsl:value-of select="local-name()" />
 <xsl:text> </xsl:text><xsl:apply-templates select="*|@*|text()" />
</xsl:template>

<xsl:template match="rdf:Description">
 <xsl:text>(</xsl:text><xsl:apply-templates select="LF:indicator" />
 <xsl:text> </xsl:text><xsl:apply-templates select="@rdf:ID" />

 <!-- type -->
 <xsl:text> </xsl:text>
 <xsl:choose>
  <xsl:when test="LF:type = 'SET'">
   <xsl:text>(ONT::SET-OF </xsl:text><xsl:apply-templates select="role:OF/@rdf:resource" />
   <xsl:text>)</xsl:text>
  </xsl:when>
  <xsl:when test="LF:word">
   <xsl:text>(:* </xsl:text><xsl:apply-templates select="LF:type" />
   <xsl:text> </xsl:text><xsl:apply-templates select="LF:word" />
   <xsl:text>)</xsl:text>
  </xsl:when>
  <xsl:otherwise>
   <xsl:apply-templates select="LF:type" />
  </xsl:otherwise>
 </xsl:choose>
 
 <!-- normal roles -->
 <xsl:for-each select="role:*">
  <xsl:if test="not((local-name() = 'OF' and ../LF:type = 'SET') or local-name() = 'MOD' or local-name() = 'MEMBER')">
   <xsl:apply-templates select="." />
  </xsl:if>
 </xsl:for-each>

 <!-- mods -->
 <xsl:if test="role:MOD">
  <xsl:text> :MODS (</xsl:text>
  <xsl:for-each select="role:MOD">
   <xsl:if test="position() > 1"><xsl:text> </xsl:text></xsl:if>
   <xsl:apply-templates select="@rdf:resource" />
  </xsl:for-each>
  <xsl:text>)</xsl:text>
 </xsl:if>

 <!-- members -->
 <xsl:if test="role:MEMBER">
  <xsl:text> :MEMBERS (</xsl:text>
  <xsl:for-each select="role:MEMBER">
   <xsl:if test="position() > 1"><xsl:text> </xsl:text></xsl:if>
   <xsl:apply-templates select="@rdf:resource" />
  </xsl:for-each>
  <xsl:text>)</xsl:text>
 </xsl:if>

 <xsl:apply-templates select="LF:start | LF:end" />

 <xsl:text>)
 </xsl:text>
</xsl:template>

<xsl:template match="rdf:RDF">
<xsl:text>(</xsl:text>
<xsl:apply-templates />
<xsl:text>)</xsl:text>
</xsl:template>

</xsl:stylesheet>

