<cfcomponent displayname="FizzBuzz" output="false" implements="iAnswerable">
<cffunction name="Answer" returntype="string" access="public" output="false" 
						hint="I answer a question">
	<cfargument name="question" type="any" required="true" />
		
	<cfif ! isNumeric(question)>
		<cfthrow type="isNAN">
	<cfelseif isFizzy(question) && isBuzzy(question)>
		<cfreturn 'fizzbuzz'>
	<cfelseif isFizzy(question)>
		<cfreturn 'fizz'>
	<cfelseif isBuzzy(question)>
		<cfreturn 'buzz'>
	<cfelse>
		<cfreturn question>
	</cfif>	 
</cffunction>

<cffunction name="isFizzy">
	<cfargument name="input">
	<cfreturn arguments.input mod '3' eq 0 || find('3', arguments.input) gt 0 />
</cffunction>

<cffunction name="isBuzzy">
	<cfargument name="input">
	<cfreturn input mod '5' eq 0 || find('5', input) gt 0 />
</cffunction>

</cfcomponent>