<cfparam name="url.name" default="Liam Kelly">
<cfparam name="url.title" default="Boss Playa">
<cfparam name="url.email" default="liammkelly@gmail.com">

<cfset loc = {}>
<cfset loc.email = urldecode(url.email)>
<cfset loc.name = urldecode(url.name)>
<cfset loc.title = urldecode(url.title)>

<cfquery name="insRSVP" datasource="lwfa">
	INSERT INTO
		rsvp
			(
				name,
				title,
				email
			)
		values
			(
				'#loc.name#',
				'#loc.title#',
				'#loc.email#'
			)
</cfquery>

<cfmail
	from="Gallatin Symposium @ Harvard <tal@talkelly.com>"
	to="liammkelly@gmail.com"
	subject="Gallatin Symposium RSVP received"
	server="mail.tallkellys.com"
	failto="tal@tallkellys.com"
	password="Wan99ker"
	username="lwfamail@tallkellys.com"
	type="html">

<h3>The following user has RSVP'ed:</h3>

  <div style="float:left;">
<div style="float:left;width:80px;text-align:right;font-weight:bold;clear:both;">Name</div>
<div style="float:left;padding-left:10px;clear:right;"><cfoutput>#loc.name#</cfoutput></div>
<div style="float:left;width:80px;text-align:right;font-weight:bold;clear:both;">Title</div>
<div style="float:left;padding-left:10px;clear:right;"><cfoutput>#loc.title#</cfoutput></div>
<div style="float:left;width:80px;text-align:right;font-weight:bold;clear:both;">Email</div>
<div style="float:left;padding-left:10px;clear:right;"><cfoutput>#loc.email#</cfoutput></div>
  </div>

  <div style="float:left;padding-left:50px;">
  <a href="http://talkelly.com/gallatin/view.cfm">Click here</a> to view the list of respondants
  </div>

</cfmail>
