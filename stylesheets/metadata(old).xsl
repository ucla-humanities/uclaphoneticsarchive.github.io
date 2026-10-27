<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output encoding="utf-8"/>

<xsl:template match="/">

<xsl:variable name="jpg2_header" select="boolean( //metadata/item/image_jpg2[ . != '' ][ 1 ] )" />

  <html>
  <title><xsl:value-of select="metadata/language_name"/></title> 
    <style type="text/css">
	body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10pt;}
	.style2 {font-family: Doulos SIL, Gentium, Lucida Sans Unicode, Arial Unicode MS;
                 font-size: 30pt}
    </style>
   <body>
     
     <div align="center">
     <blockquote>		
     <p align="center"><img src="../../p-lab%20banner.jpg" alt="UCLA Phonetics Lab Archive" name="Banner" width="447" height="87" border="0" align="absmiddle"/></p>
     <p class="style2"><xsl:value-of select="metadata/language_name"/></p>

  <a href="../../main2.htm">Back to Language Index</a>

       
        <p align="left">Consult the Word Lists in order to locate individual words of interest.  You can search within your web-browser for specific sounds.  (See word lists for more details.)</p>
	<p align="left">Left-click to access files online; right-click (Macintosh Control + click) to download.  Not all information is available for all recordings, and so some cells might be blank.</p>
	<p align="left">Click "Details" for more information about a specific recording.</p>
	<p align="left">For more detailed instructions, click <a href="../../archive_instructions.htm" target="_blank">here</a>.</p>
	
	</blockquote>
    
     <p/>

    
     <table border="1">
	
	<tr bgcolor="#FEF886">        <th>&#160;</th>
	<th>Word List</th>
	<th>Word List Entries</th>
	<th>Speaker(s)</th>
	<th>Audio Filename</th>
        <th>WAV</th>
        <th>MP3</th>
        <th>Scanned Word List (JPG)</th>
	<xsl:if test="$jpg2_header= true()"><th>JPG 2</th></xsl:if>
        <th>Scanned Word List (TIF)</th>
        <xsl:if test="$jpg2_header= true()"><th>TIF 2</th></xsl:if>
	<th>Recording Details</th>

      </tr>
 
   <xsl:choose>
     <xsl:when test="$jpg2_header &gt; 0">
      <xsl:for-each select="metadata/item">
       
        <tr>
	<td><xsl:value-of select="entry"/></td>
	<td><xsl:if test="wordlist!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="wordlist" /></xsl:attribute><xsl:value-of select="wordlist" /></a></xsl:if>&#160;</td>
	<td><xsl:value-of select="wordlist_entries"/>&#160;</td>
	<td><xsl:value-of select="speakers"/></td>
	<td><xsl:value-of select="filename_audio"/></td>
	<td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="filename_wav" /></xsl:attribute>WAV</a></td>
        <td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="filename_mp3" /></xsl:attribute>MP3</a></td>
        <td><xsl:if test="image_jpg!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_jpg" /></xsl:attribute>JPG </a></xsl:if>&#160;</td>
	<td><xsl:if test="image_jpg2!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_jpg2" /></xsl:attribute>JPG 2 </a></xsl:if>&#160;</td>
	<td><xsl:if test="image_tif!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_tif" /></xsl:attribute>TIF </a></xsl:if>&#160;</td>
	<td><xsl:if test="image_tif2!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_tif2" /></xsl:attribute>TIF 2 </a></xsl:if>&#160;</td>
	<td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="details" /></xsl:attribute>Details </a></td>
      	</tr>
	
      </xsl:for-each>
	

     </xsl:when>

	

     <xsl:otherwise>
      <xsl:for-each select="metadata/item">

        <tr>
	<td><xsl:value-of select="entry"/></td>
	<td><xsl:if test="wordlist!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="wordlist" /></xsl:attribute><xsl:value-of select="wordlist" /></a></xsl:if>&#160;</td>
	<td><xsl:value-of select="wordlist_entries"/>&#160;</td>
	<td><xsl:value-of select="speakers"/></td>
	<td><xsl:value-of select="filename_audio"/></td>
	<td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="filename_wav" /></xsl:attribute>WAV</a></td>
        <td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="filename_mp3" /></xsl:attribute>MP3</a></td>
        <td><xsl:if test="image_jpg!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_jpg" /></xsl:attribute>JPG </a></xsl:if>&#160;</td>
	<td><xsl:if test="image_tif!=''"><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="image_tif" /></xsl:attribute>TIF </a></xsl:if>&#160;</td>
	<td><a target="_blank"> <xsl:attribute name="href"><xsl:value-of select="details" /></xsl:attribute>Details </a></td>
      	</tr>
	
      </xsl:for-each>
	
    </xsl:otherwise>
  </xsl:choose>

      
      </table>
  </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

