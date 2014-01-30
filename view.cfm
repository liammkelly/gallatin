<cfquery name="qRSVP" datasource="lwfa">
	select * from rsvp order by id
</cfquery>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
	<title>Gallatin Symposium Registration Summary</title>
	<style>
		th {
			background-color:#003;
			color:#FFF;
			font: bold 24px "Times New Roman";
		}
		table {
			border: 1px solid black;
			border-width: 1px 0 0 1px;
		}
		td,th {
			border: 1px solid black;
			border-width: 0 1px 1px 0;
			font: 18px "Times New Roman";
			padding:2px;
		}
	</style>
	</head>
	<body>

	<table cellspacing=0 cellpadding=0>
		<tr>
			<th>Name</th>
			<th>Title</th>
			<th>Email</th>
			<th>RSVP Date</th>
		</tr>
		<cfoutput query="qRSVP">
			<tr>
				<td>#name#</td>
				<td>#title#</td>
				<td>#email#</td>
				<td>#dateformat(rsvp_date,'mmmm d')#</td>
			</tr>
		</cfoutput>
	</table>

	</body>
</html>
