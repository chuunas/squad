<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="text()">
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="*">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="/">
	<html>
    	<head>
        	<title><xsl:value-of select="/squad/name"/></title>
            <link rel="stylesheet" type="text/css" href="squad.css"/>
            <link rel="shortcut icon" type="image/ico" href="imagens/css/favicon.ico"/>
        </head>
		<body>
			<div id="wrapper">
				<div id="header">
					<div id="logo"></div>
					<div id="info">
						<ul>
							<li>Nome: <xsl:value-of select="/squad/name"/></li>
							<li>TAG: <xsl:value-of select="/squad/title"/></li>
							<li>Site: <a><xsl:attribute name="href">http://<xsl:value-of select="/squad/web"/></xsl:attribute><xsl:value-of select="/squad/web"/></a></li>
							<li>TeamSpeak 3: Guerrilheiros.sytes.net:9997</li>
						</ul>
					</div>
				</div>
				<div id="main">
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>Nome</th>
							<th>E-Mail</th>
							<th>Icq</th>
							<th>Remark</th>
						</tr>
						<xsl:for-each select="/squad/member">
							<tr>
								<td>
									<xsl:value-of select="name"/>
								</td>
								<td>
									<xsl:value-of select="email"/>
								</td>
								<td>
									<xsl:value-of select="icq"/>
								</td>
								<td>
									<xsl:value-of select="remark"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
					<fieldset>
						<legend>legenda</legend>
						N/A - Não Disponivel
					</fieldset>
				</div>
				<div id="footer">
					<p>© 2011 - 2015 <a href="http://steamcommunity.com/groups/grbrasil" title="Comunidade na STEAM" target="_new">GUERRILHEIROS BRASIL</a> - Todos os Direitos Reservados.</p>
				</div>
			</div>
		</body>
</html>
</xsl:template>
</xsl:stylesheet>