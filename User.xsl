<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />
	<xsl:template match="/">
		<html>
			<head>
				<link href="style.css" rel="stylesheet" type="text/css" />
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous" />
				<title>User Profile</title>
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
								<a href="About.xml">About</a>
								<a href="User.xml" class="act">Profile</a>	
								<a href="Login.html">Logout</a>	
							</div>
						</div>									
						<a href="BuyTickets.html" class="button-call">Buy Tickets</a>				
					</div>
				</div>
				<br/>
				<div style="text-align:center; margin-top: 100px;">
					<div class="userCard" style="display: inline-block;">	
						<img src="images/user.jpg" alt="Avatar" class="profilePhoto" width= "200"/>
						
						<table cellpadding="10" class="first">	
							<xsl:for-each select="users/user">	
								<tr>
									<th colspan="2"><h2>Login Information</h2></th>				
								</tr>
								<tr>
									<td class="head"><i class="fas fa-id-card icon"></i> User ID</td>
									<td><xsl:value-of select="@userID" /></td>
								</tr>
								<xsl:for-each select="loginInfo">		
									<tr>
										<td class="head"><i class="fas fa-user icon"></i> Username</td>
										<td><xsl:value-of select="username" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-envelope icon"></i> Email</td>
										<td><xsl:value-of select="email" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-mobile-alt icon"></i> Phone</td>
										<td><xsl:value-of select="phoneNo" /></td>
									</tr>		
								</xsl:for-each>	
								
								<tr>			
									<th colspan="2"><h2><br/>Profile Information</h2></th>
								</tr>
								<xsl:for-each select="profileInfo">		
									<tr>
										<td class="head"><i class="fas fa-pen-nib icon"></i> Full Name</td>
										<td><xsl:value-of select="fullname" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-calendar-alt icon"></i> Birth Date</td>
										<td><xsl:value-of select="dateOfBirth" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-flag icon"></i> Nationality</td>
										<td><xsl:value-of select="nationality" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-heart icon"></i> Marital Status</td>
										<td><xsl:value-of select="maritalStatus" /></td>
									</tr>
									<xsl:for-each select="address">	
										<tr>
											<td class="head"><i class="fas fa-map-marker-alt icon"></i> Location</td>
											<td><xsl:value-of select="location" /><xsl:value-of select="concat(' ', postalCode)" /></td>
										</tr>		
									</xsl:for-each>										
								</xsl:for-each>	
									<tr>
										<td class="head"><i class="fas fa-globe-americas icon"></i> Passport No.</td>
										<td><xsl:value-of select="@passportNumber" /></td>
									</tr>
							</xsl:for-each>	
						</table>
						<br/><br/>
						</div>
				</div>
					<h1>Promotions</h1>
					<br/>
				<div class="promotions">
					<table cellpadding="10" width="100%" style="background:none;" class="promo">
						<xsl:for-each select="users/promotions/promo">
							<tr>
								<td width="350px">
									<xsl:choose> 
										<xsl:when test="@id = 'PR-001'"> 
											<img src="images/promo1.jpg" width="100%"/> 
										</xsl:when> 
										<xsl:when test="@id = 'PR-002'"> 
											<img src="images/promo2.jpg" width="100%"/> 
										</xsl:when> 
										<xsl:when test="@id = 'PR-003'"> 
											<img src="images/promo3.jpg" width="100%"/> 
										</xsl:when> 
										<xsl:when test="@id = 'PR-004'"> 
											<img src="images/promo4.jpg" width="100%"/> 
										</xsl:when> 
										<xsl:when test="@id = 'PR-005'"> 
											<img src="images/promo5.jpg" width="100%"/> 
										</xsl:when> 
									</xsl:choose> 
								</td>
								<td class="title">
									<xsl:value-of select="title" /><br/>
									<span class="desc">Validity: from <xsl:value-of select="validDate/from" />
										  to <xsl:value-of select="validDate/to" />
									</span>
								</td>
								
							</tr>
						</xsl:for-each>	
					</table>
				</div>
				<br/>
				<br/>
				<div class="footer">
				  <p>© 2018 AMC Cinemas. All rights reserved.</p>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>