<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8"/>

<xsl:variable name="jpg2_header" select="boolean( //metadata/item/image_jpg2[ . != '' ][ 1 ] )" />

<xsl:template match="/">

  <html>
  <title>Recording Details for <xsl:value-of select="metadata/language_name"/></title>
    <style type="text/css">
	body,td,th {
	font-family: Doulos SIL, Gentium, Lucida Sans Unicode, Arial Unicode MS;
	font-size: 11pt;
   </style>
  <body>
  <xsl:for-each select="/metadata/item"> 
     <table border="1">
        <tr><td>Recording<a><xsl:attribute name="name"><xsl:value-of select="entry"/></xsl:attribute></a></td>
			<td><xsl:value-of select="entry"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="filename_wav_header"/></xsl:for-each></td><td><xsl:value-of select="filename_wav"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="filename_mp3_header"/></xsl:for-each></td><td><xsl:value-of select="filename_mp3"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="lang_name_header"/></xsl:for-each></td><td><xsl:value-of select="lang_name"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="dialect_header"/></xsl:for-each></td><td><xsl:value-of select="dialect"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="sil_code_header"/></xsl:for-each></td><td><xsl:value-of select="sil_code"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="content_header"/></xsl:for-each></td><td><xsl:value-of select="content"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="recording_location_header"/></xsl:for-each></td><td><xsl:value-of select="recording_location"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="recording_date_header"/></xsl:for-each></td><td><xsl:value-of select="recording_date"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="fieldworkers_header"/></xsl:for-each></td><td><xsl:value-of select="fieldworkers"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="origin_header"/></xsl:for-each></td><td><xsl:value-of select="origin"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="speakers_header"/></xsl:for-each></td><td><xsl:value-of select="speakers"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="wav_quality_header"/></xsl:for-each></td><td><xsl:value-of select="wav_quality"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="mp3_quality_header"/></xsl:for-each></td><td><xsl:value-of select="mp3_quality"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="original_medium_header"/></xsl:for-each></td><td><xsl:value-of select="original_medium"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="wordlist_header"/></xsl:for-each></td><td><xsl:value-of select="wordlist"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="wordlist_entries_header"/></xsl:for-each></td><td><xsl:value-of select="wordlist_entries"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="image_tif_header"/></xsl:for-each></td><td><xsl:value-of select="image_tif"/>&#160;</td></tr>
		<xsl:if test="image_tif2 != ''"><tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="image_tif2_header"/></xsl:for-each></td><td><xsl:value-of select="image_tif2"/>&#160;</td></tr></xsl:if>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="image_jpg_header"/></xsl:for-each></td><td><xsl:value-of select="image_jpg"/>&#160;</td></tr>
		<xsl:if test="image_jpg2 != ''"><tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="image_jpg2_header"/></xsl:for-each></td><td><xsl:value-of select="image_jpg2"/>&#160;</td></tr></xsl:if>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="tif_quality_header"/></xsl:for-each></td><td><xsl:value-of select="tif_quality"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="jpg_quality_header"/></xsl:for-each></td><td><xsl:value-of select="jpg_quality"/>&#160;</td></tr>
		<tr><td><xsl:for-each select="/metadata/headers"><xsl:value-of select="rights_header"/></xsl:for-each></td><td>This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/2.0/">Creative Commons License</a>.</td></tr>
				
	</table><br/><br/>
   </xsl:for-each>
   </body>
   
  </html>
</xsl:template>

</xsl:stylesheet>

