<cfcomponent output="false" implements="iAnswerable">
	<cffunction name="Answer" returntype="string" access="public" output="false" hint="I answer a question">
		<cfargument name="question" type="any" required="true" />
		
		<cfset var local = {}>
		<cfset local.answer = ''>
		
		<cfloop list="#question#" index="local.item">
			<cfif !isNumeric(local.item)>
				<cfthrow type="isNAN">
			</cfif>
			
			<cfif (local.item mod 3 eq 0 && local.item mod 5 eq 0)
						|| ( find('3', local.item) gt 0 && find('5', local.item) gt 0  )>
				<cfset local.answer = ListAppend(local.answer, 'fizzbuzz')>
			<cfelseif local.item mod 3 eq 0 || find('3', local.item) gt 0>
				<cfset local.answer = ListAppend(local.answer, 'fizz')>
			<cfelseif local.item mod 5 eq 0	|| find('5', local.item) gt 0>
				<cfset local.answer = ListAppend(local.answer, 'buzz')>
			<cfelse>
				<cfset local.answer = ListAppend(local.answer, local.item)>
			</cfif>
		</cfloop>
		
		<cfreturn local.answer>
	</cffunction>
</cfcomponent>