<cfinterface displayname="iAnswerable" hint="I represent a class that answers a question">
	<cffunction name="Answer" returntype="string" access="public" output="false" hint="I answer a question">
		<cfargument name="question" type="any" required="true" /> 
	</cffunction>
</cfinterface>