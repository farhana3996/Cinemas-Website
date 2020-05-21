<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />
	<xsl:template match="/">
		<html>
			<head>
				<link href="style.css" rel="stylesheet" type="text/css" />
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"/>
				<title>Cinemas</title>
			</head>

			<body>				
				<div class="header">
					<img src="images/empire_logo.png" width="100px" style="float:left"/>
					<div class="header-right">						
						<a href="Home.html">Home</a>					
						<a href="Theatres.xml" class="act">Cinemas</a>	
						<a href="TicketPrices.xml">Ticket Prices</a>										
						<div class="dropdown">
							<button class="dropbtn">More 
								<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-content">
								<a href="About.xml">About</a>
								<a href="User.xml">Profile</a>	
								<a href="Login.html">Logout</a>	
							</div>
						</div>									
						<a href="BuyTickets.html" class="button-call">Buy Tickets</a>				
					</div>
				</div>
				<h1>Find A Cinema</h1>

				<div id="theatres">
					<div class="row">
						<xsl:for-each select="theatres/theatre">		
							<xsl:sort select="name"/>						
							<div class="theatresColumn">
								<div class="theatresCard">									
									<xsl:choose> 
										<xsl:when test="@theatreID='TH-001'"> 
											<img src="images/TH-001.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-002'"> 
											<img src="images/TH-002.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-003'"> 
											<img src="images/TH-003.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-004'"> 
											<img src="images/TH-004.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-005'"> 
											<img src="images/TH-005.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-006'"> 
											<img src="images/TH-006.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-007'"> 
											<img src="images/TH-007.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-008'"> 
											<img src="images/TH-008.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-009'"> 
											<img src="images/TH-009.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
										<xsl:when test="@theatreID='TH-010'"> 
											<img src="images/TH-010.jpg" style="width:100%; border-radius: 5px 5px 0px 0px;"/> 
										</xsl:when>
									</xsl:choose> 
									<div style="padding: 0px 10px 5px 10px;">
										<h2><xsl:value-of select="name" /></h2>
										<xsl:for-each select="location">
											<p style="font-size: 14px; font-weight: bold; color:white; line-height: 0px;"><xsl:value-of select="city"/></p>
											<p style="font-size: 12px; color:white;"><xsl:value-of select="address"/></p>
										</xsl:for-each>
									</div>
								</div>
							</div>	
						</xsl:for-each>
					</div>				
				</div>
				
				<div class="footer">
				  <p>© 2018 AMC Cinemas. All rights reserved.</p>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
