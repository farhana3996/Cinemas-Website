<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />
	<xsl:template match="/">
		<html>
			<head>
				<link href="style.css" rel="stylesheet" type="text/css" />
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"/>
				<title>Cinemas Ticket Pricing</title>
			</head>

			<body>				
				<div class="header">
					<img src="images/empire_logo.png" width="100px" style="float:left"/>
					<div class="header-right">						
						<a href="Home.html">Home</a>					
						<a href="Theatres.xml">Cinemas</a>	
						<a href="TicketPrices.xml" class="act">Ticket Prices</a>										
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
				<br/>
				<h1>Ticket Pricing</h1>
				
				<div class="ticketprices">					
					<xsl:for-each select="prices">
						<table cellpadding="10" >
							<xsl:for-each select="ticketPrice">
								<th colspan="3"><xsl:value-of select="@format" /></th>
								<tr>
									<td class="head subheading">Hall Type</td>
									<td class="head subheading">Weekday</td>
									<td class="head subheading">Weekend</td>
								</tr>
								<xsl:for-each select="hall">
									<tr>
										<td class="head"><xsl:value-of select="@type" /></td>   
										<td>RM <xsl:value-of select="weekday" /></td>  
										<td>RM <xsl:value-of select="weekend" /></td> 										
									</tr>
								</xsl:for-each>	
							</xsl:for-each>	
						</table>
						<br/>
						<xsl:for-each select="note">
							<div class="box">
								<p><strong class="note">
										<i class="fas fa-thumbtack icon" style="padding: 10px; transform: rotate(45deg);"></i> 
										<xsl:value-of select="heading" />
									</strong> 
									<xsl:value-of select="description" /></p>
							</div>
						</xsl:for-each>	
					</xsl:for-each>	
				</div>
				<br/><br/>
				<div class="footer">
				  <p>© 2018 AMC Cinemas. All rights reserved.</p>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>