<cfcomponent displayname="FizzBuzz" output="false" implements="iAnswerable">
<cffunction name="Answer" returntype="string" access="public" output="false" 
						hint="I answer a question">
	<cfargument name="question" type="any" required="true" />
	
	<cfif !isNumeric(question)>
		<cfthrow type="isNAN">
	</cfif>
	
	<cfif (question mod 5 eq 0 AND question mod 3 eq 0) 
				|| (find('5', question) gt 0 AND find('3', question) gt 0)>
		<cfreturn 'fizzbuzz'>
	</cfif>
	
	<cfif question mod 5 eq 0 || find('5', question) gt 0>
		<cfreturn 'buzz'>
	</cfif> 
	
	<cfif isFizzy(question)>
		<cfreturn 'fizz'>
	</cfif>
	
	<cfreturn question>
</cffunction>

<cffunction name="isFizzy">
	<cfargument name="question">
	<cfreturn question mod 3 eq 0 || find('3', question) gt 0>
</cffunction>

</cfcomponent>