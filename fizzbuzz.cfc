<cfcomponent output="false" implements="iAnswerable">
	<cffunction name="Answer" returntype="string" access="public" output="false" hint="I answer a question">
		<cfargument name="question" type="any" required="true" /> 
		<cfset var local = {}>
		<cfset local.answer = ''>
		<cfloop list="#question#" index="local.i">
			<cfif (local.i mod 3 eq 0) AND (local.i mod 5 eq 0)>
				<cfset local.answer = ListAppend(local.answer, 'FizzBuzz')>
			<cfelseif local.i mod 3 eq 0>
				<cfset local.answer = ListAppend(local.answer, 'Fizz')>
			<cfelseif local.i mod 5 eq 0>
				<cfset local.answer = ListAppend(local.answer, 'Buzz')>
			<cfelseif find("3", local.i) gt 0>
				<cfset local.answer = ListAppend(local.answer, 'Fizz')>
			<cfelseif find("5", local.i) gt 0>
				<cfset local.answer = ListAppend(local.answer, 'Buzz')>	
			</cfif>
		</cfloop>
		<cfreturn local.answer>
	</cffunction>
</cfcomponent>