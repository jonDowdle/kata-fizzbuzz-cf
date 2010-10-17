<cfcomponent output="false" implements="iAnswerable">
	<cffunction name="Answer" returntype="string" access="public" output="false" hint="I answer a question">
		<cfargument name="question" type="any" required="true" /> 
		
		<cfreturn question>
	</cffunction>
</cfcomponent>