<cfquery name="qRSVP" datasource="lwfa">
	select * from rsvp order by id
</cfquery>

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
