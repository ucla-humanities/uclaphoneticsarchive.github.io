

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8"/>

<xsl:template match="/">

<xsl:variable name="IPA_header" select="boolean( //wordlist/item/IPA_transcription[ . != '' ][ 1 ] )" />

<xsl:variable name="alt_IPA_header" select="boolean( //wordlist/item/alt_IPA_transcription[ . != '' ][ 1 ] )" />

<xsl:variable name="orthography_header" select="boolean( //wordlist/item/native_orthography[ . != '' ][ 1 ] )" />

<xsl:variable name="alt_orthography_header" select="boolean( //wordlist/item/alt_orthography[ . != '' ][ 1 ] )" />

<xsl:variable name="gloss_header" select="boolean( //wordlist/item/gloss[ . != '' ][ 1 ] )" />

<xsl:variable name="alt_gloss_header" select="boolean( //wordlist/item/alt_gloss[ . != '' ][ 1 ] )" />

<xsl:variable name="semantic_header" select="boolean( //wordlist/item/semantic_category[ . != '' ][ 1 ] )" />


  <html>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"></META>
  <title>Word List for <xsl:value-of select="wordlist/language_name"/></title>
	<style type="text/css">
	body,td,th {
	font-family: Doulos SIL, Gentium, Lucida Sans Unicode, Arial Unicode MS;
	font-size: 13pt;}
        .style2 {font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10pt;} 
   
	</style>  
<head><SCRIPT language="JavaScript" src="../ipa-pop-up.js">
</SCRIPT></head>
  <body>
     
	 <FORM name="form1" method="post">

<p class="style2">Use the form below to create Unicode IPA characters that you can enter into your browser's search field. (Pop-ups must be enabled.)</p>
  <p class="style2">&#160;&#160;&#160;Enter a standard character and Right-Click (Macintosh Ctrl + Click) for similar IPA characters.</p>
  <p class="style2">&#160;&#160;&#160;Double-click for an interactive IPA chart.</p>
<p class="style2">Copy the results of your search, and paste them (Ctrl + V) into your browser's search box (Edit > Find) to search for that symbol. <br/> (You may need to click outside of the form before using Find to locate the sound.)</p>
<INPUT  name="SampleInput" OnDblClick="GetIPA('SampleInput')" OnContextMenu="return GetIPA2('SampleInput')" TYPE="text" size="28" maxlength="255" VALUE=""></INPUT>
</FORM>
<p class="style2">(The unicode entry tool was developed by the Linguist List. To obtain it for use in other web pages click <a href="http://emeld.org/tools/charwrite.cfm">here</a>)</p>
     <table border="1">
        <tr bgcolor="#FEF886">
        <th>Entry</th>
        <xsl:if test="$orthography_header= true()"><th><xsl:value-of select="/wordlist/headers/orthography_header"/>&#160;</th></xsl:if>
        <xsl:if test="$alt_orthography_header= true()"><th><xsl:value-of select="/wordlist/headers/alt_orthography_header"/>&#160;</th></xsl:if>
	<xsl:if test="$IPA_header= true()"><th><xsl:value-of select="/wordlist/headers/IPA_header"/>&#160;</th></xsl:if>
	<xsl:if test="$alt_IPA_header= true()"><th><xsl:value-of select="/wordlist/headers/alt_IPA_header"/>&#160;</th></xsl:if>
	<xsl:if test="$gloss_header= true()"><th><xsl:value-of select="/wordlist/headers/gloss_header"/>&#160;</th></xsl:if>
	<xsl:if test="$alt_gloss_header= true()"><th><xsl:value-of select="/wordlist/headers/alt_gloss_header"/>&#160;</th></xsl:if>
	<xsl:if test="$semantic_header = true()"><th>Semantic Category</th></xsl:if> 
      </tr>
      <xsl:for-each select="wordlist/item">
	<tr>
	<td><xsl:value-of select="entry"/><a><xsl:attribute name="name"><xsl:value-of select="entry" /></xsl:attribute></a>&#160;</td>
	 <xsl:if test="$orthography_header=true()">
           <xsl:if test="native_orthography!=''">
		<td><xsl:value-of select="native_orthography"/></td>
	   </xsl:if>
 	   <xsl:if test="native_orthography=''">
		<td>&#160;</td>
	   </xsl:if>  
	</xsl:if>

	<xsl:if test="$alt_orthography_header=true()"> <td>   
	<xsl:if test="alt_orthography!=''">
		<xsl:value-of select="alt_orthography"/>
	   </xsl:if>&#160;</td>
          </xsl:if>	
	
	<xsl:if test="$IPA_header=true()"><td>
           <xsl:if test="IPA_transcription!=''">
		<xsl:value-of select="IPA_transcription"/>
	   </xsl:if>&#160;</td>
          </xsl:if>

	<xsl:if test="$alt_IPA_header=true()"><td>
           <xsl:if test="alt_IPA_transcription!=''">
		<xsl:value-of select="alt_IPA_transcription"/>
	   </xsl:if>&#160;</td>
          </xsl:if>

	<xsl:if test="$gloss_header=true()"><td>
           <xsl:if test="gloss!=''">
		<xsl:value-of select="gloss"/>
	   </xsl:if>&#160;</td>
          </xsl:if>

	<xsl:if test="$alt_gloss_header=true()"><td>
           <xsl:if test="alt_gloss!=''">
		<xsl:value-of select="alt_gloss"/>
	   </xsl:if>&#160;</td>
          </xsl:if>

	<xsl:if test="$semantic_header=true()"><td>
           <xsl:if test="semantic_category!=''">
		<xsl:value-of select="semantic_category"/>
	   </xsl:if>&#160;</td>
          </xsl:if>

      	</tr>
      </xsl:for-each>
      </table>

  </body>
  </html>

</xsl:template>

</xsl:stylesheet>

