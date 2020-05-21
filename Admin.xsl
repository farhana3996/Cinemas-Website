<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />
	<xsl:template match="/">
		<html>
			<head>		
				<link href="style.css" rel="stylesheet" type="text/css" />
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous" />
				<title>Admin Profile</title>
			</head>

			<body>				
				<div class="header">
					<img src="images/empire_logo.png" width="100px"/>
					<div class="header-right">
						<a href="#" class="act">Profile</a>					
						<a href="Orders.xml">Report</a>					
						<a href="Login.html" class="button-call">Logout</a>	
					</div>
				</div>
				<br/>
				<div style="text-align:center; margin-top: 100px;">
					<div class="userCard" style="align:center; display: inline-block;">	
						<img src="images/admin.jpg" alt="Avatar" class="profilePhoto" width= "200"/>
						
						<table cellpadding="10" class="first">	
							<xsl:for-each select="admins/admin">	
								<tr>
									<th colspan="2"><h2 style="font-size: 26px">Basic Information</h2></th>				
								</tr>
								<tr>
									<td class="head row-ID"><i class="fas fa-id-card icon"></i> Admin ID</td>
									<td class="row-val"><xsl:value-of select="@adminID" /></td>
								</tr>
								<xsl:for-each select="basicInfo">											
									<tr>
										<td class="head"><i class="fas fa-pen-nib icon"></i> Full Name</td>
										<td><xsl:value-of select="firstName" /><xsl:value-of select="concat(' ', lastName)" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-calendar-alt icon"></i> Birth Date</td>
										<td><xsl:value-of select="dateOfBirth" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-flag icon"></i> Nationailty</td>
										<td><xsl:value-of select="nationality" /></td>
									</tr>
									<xsl:for-each select="contact">
										<tr>
											<td class="head"><i class="fas fa-envelope icon"></i> Email</td>
											<td><xsl:value-of select="email" /></td>
										</tr>
										<tr>
											<td class="head"><i class="fas fa-mobile-alt icon"></i> Phone</td>
											<td><xsl:value-of select="phoneNo" /></td>
										</tr>
										<tr>
											<td class="head"><i class="fas fa-map-marker-alt icon"></i> Home Address</td>
											<td><xsl:value-of select="homeAddress" /></td>
										</tr>											
									</xsl:for-each>				
								</xsl:for-each>	
								<tr>
									<th colspan="2"><h2 style="font-size: 26px"><br/>Job Information</h2></th>
								</tr>
								<xsl:for-each select="jobInfo">						
									
									<tr>
										<td class="head"><i class="fas fa-pen-nib icon"></i> Job Title</td>
										<td><xsl:value-of select="title" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-desktop icon"></i> Department</td>
										<td><xsl:value-of select="department" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-code-branch icon"></i> Branch</td>
										<td><xsl:value-of select="branch" /></td>
									</tr>
									<tr>
										<td class="head"><i class="fas fa-calendar-alt icon"></i> Date of Hire</td>
										<td><xsl:value-of select="hireDate" /></td>
									</tr>			
								</xsl:for-each>	
							</xsl:for-each>	
						</table>
					</div>
				</div>
				<div class="footer">
				  <p>© 2018 AMC Cinemas. All rights reserved.</p>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>