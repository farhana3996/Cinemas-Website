<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />
	<xsl:template match="/">
		<html>			
			<head>	
				<link href="style.css" rel="stylesheet" type="text/css" />
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"/>
				<title>About Us</title>
			</head>

			<body>				
				<div class="header">
					<img src="images/empire_logo.png" width="100px" style="float:left"/>
					<div class="header-right">						
						<a href="Home.html">Home</a>					
						<a href="Theatres.xml">Cinemas</a>	
						<a href="TicketPrices.xml">Ticket Prices</a>										
						<div class="dropdown">
							<button class="dropbtn">More 
								<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-content">
								<a href="About.xml" class="act">About</a>
								<a href="User.xml">Profile</a>	
								<a href="Login.html">Logout</a>	
							</div>
						</div>									
						<a href="BuyTickets.html" class="button-call">Buy Tickets</a>				
					</div>
				</div>
				<div style="text-align:center;">
					<img src="images/banner.png" style="width:750px; max-width:100%"/> 
				</div>
				<div class="about">										
					<xsl:for-each select="information">
						<h1 style="padding-top:20px">Who Are We?</h1>
						<p><xsl:value-of select="about" /></p>
						<h1 style="padding-top:20px">Where Are We Located?</h1>
						<p><xsl:value-of select="location" /></p>
						<h1 style="padding-top:20px">How Are We Different?</h1>
						<table cellpadding="10">
							<xsl:apply-templates select="halls/hall">
								<xsl:sort select="@type" /> 
							</xsl:apply-templates>
						</table>
					</xsl:for-each>	
					
				</div>
				<br/>
				<br/>
				<div class="footer">
				  <p>© 2018 AMC Cinemas. All rights reserved.</p>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="halls/hall">
		<tr>
			<td>
				<xsl:choose> 
					<xsl:when test="@type = 'BEANIE'"> 
						<img src="images/hall-beanie.png" width="250px"/> 
					</xsl:when> 
					<xsl:when test="@type = 'IMAX'"> 
						<img src="images/hall-imax.png" width="250px"/> 
					</xsl:when> 
					<xsl:when test="@type = 'INDULGE'"> 
						<img src="images/hall-indulge.png" width="250px"/> 
					</xsl:when> 
					<xsl:when test="@type = 'LUXE'"> 
						<img src="images/hall-luxe.png" width="250px"/> 
					</xsl:when> 
				</xsl:choose> 
			</td>
			<td style="text-align:justify; font-size: 14px; line-height: 25px;">
				<xsl:value-of select="description" />
			</td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>