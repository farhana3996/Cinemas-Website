<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" />

	<xsl:template match="/">
		<html>
			<head>
				<title>Customer Orders</title>
				<link href="style.css" rel="stylesheet" type="text/css" />
			</head>
		
		<body>
			<div class="header">
				<img src="images/empire_logo.png" width="100px"/>
				<div class="header-right">
					<a href="Admin.xml">Profile</a>			
					<a href="#" class="act">Report</a>			
					<a href="Login.html" class="button-call">Logout</a>	
				</div>
			</div>
			<br/>
			<div class="customer-orders" align="center">			
				<h1>Customer Orders</h1>
				<table class="summary" cellpadding="4">
					<tr>
						<th colspan="2" id="sumtitle">SUMMARY INFORMATION</th>
					</tr>
					<tr>
						<th>Customers</th>
						<td><xsl:value-of select="count(//customer)" /> </td>
					</tr>
					<tr>
						<th>Orders</th>
						<td><xsl:value-of select="count(//order)" /> </td>
					</tr>
					<tr>
						<th>Tickets</th>
						<td><xsl:value-of select="count(//ticket)" /></td>
					</tr>
					<tr>
						<th>Quantity</th>
						<td><xsl:value-of select="sum(//@ticketQty)" /></td>
					</tr>
					<tr>
						<th>Total</th>
						<td><xsl:value-of select="format-number(sum(//@ticketPrice),'RM #,##0.00')" /></td>
					</tr>
				</table>
				<br/>
				<xsl:apply-templates select="customers/customer" />		
			</div>
			<br/>
			<div class="footer">
				<p>© 2018 AMC Cinemas. All rights reserved.</p>
			</div>
		</body>
		
		</html>
	</xsl:template>

	<xsl:template match="customer">
		<table class="custinfo" cellpadding="4">
			<tr>
				<th>Customer</th>
				<td><xsl:value-of select="name" /></td>
			</tr>
			<tr>
				<th>Customer ID</th>
				<td><xsl:value-of select="@custID" /></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><xsl:value-of select="@gender" /><br /></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><xsl:value-of select="address" /><br /></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><xsl:value-of select="phone" /></td>
			</tr>  
			<tr>
				<th>Email Address</th>
				<td><xsl:value-of select="email" /></td>
			</tr> 
		</table>
		<xsl:apply-templates select="orders" />
	</xsl:template>

	<xsl:template match="orders">
		<table class="orderinfo" border="4" cellpadding="4">
			<tr>
				<th>Order Date</th>
				<th>Order ID</th>
				<th>Description</th>
				<th>Qty</th>
				<th>Price</th>
				<th>Total</th>
			</tr>
			<xsl:apply-templates select="order/tickets" />
			<tr>
				<th class="grand" colspan="3">Grand Total</th>
				<td class="grand"><xsl:value-of select="sum(order/tickets/ticket/@ticketQty)" /></td>
				<td class="grand"></td>
				<td class="grand"><xsl:value-of select="format-number(sum(order/tickets/ticket/@ticketPrice),'RM #,##0.00')" /></td>
			</tr>
		</table><br/>
	</xsl:template>

	<xsl:template match="tickets">
		<xsl:apply-templates select="ticket" />
		<tr>
			<th class="subtotal" colspan="3">Subtotal</th>
			<td class="subtotal"><xsl:value-of select="sum(ticket/@ticketQty)" /></td>
			<td class="subtotal"></td>
			<td class="subtotal"><xsl:value-of select="format-number(sum(ticket/@ticketPrice),'#,##0.00')" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="ticket">
		<tr>
			<xsl:if test="position()=1"> 
				<td class="tdtext" rowspan="{count(../../tickets/ticket)}"> <xsl:value-of select="../../@orderDate" /> </td> 
			</xsl:if>
			
			<xsl:if test="position()=1"> 
				<td class="tdtext" rowspan="{count(../../tickets/ticket)}"> <xsl:value-of select="../../@orderID" /> </td> 
			</xsl:if>
			<td class="tdtext">
				<xsl:number value="position()" format="1)" /> &#160;
				<xsl:value-of select="." /> ( <xsl:value-of select="@hallType" /> )
			</td>
			<td><xsl:value-of select="@ticketQty" /></td>
			<td><xsl:value-of select="@ticketPrice" /></td>
			<td><xsl:value-of select="format-number(@ticketQty * @ticketPrice, '#,##0.00')" /></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>