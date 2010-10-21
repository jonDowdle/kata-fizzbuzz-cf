<cfcomponent output="false" implements="iAnswerable">
<cffunction name="Answer" returntype="string" access="public" output="false" hint="I answer a question">
	<cfargument name="question" type="any" required="true" /> 
	<cfif !isNumeric(question)>
		<cfthrow type="isNAN">
	</cfif>		
	<cfif ((question mod 3 eq 0) && (question mod 5 eq 0))
				|| (find('3', question) gt 0 && find('5', question) gt 0) >
		<cfreturn 'fizzbuzz'>
	<cfelseif question eq '3' || find('3', question) gt 0>
		<cfreturn 'fizz'>
	<cfelseif question eq '5' || find('5', question) gt 0>
		<cfreturn 'buzz'>
	<cfelse>
		<cfreturn question>	
	</cfif>
	
</cffunction>
</cfcomponent>