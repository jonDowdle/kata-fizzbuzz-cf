<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">

	<cffunction name="setUp" returntype="void" access="public">
		<cfset variables.fizzBuzz = createObject("component","../fizzbuzz") />
	</cffunction>

	<cffunction name="fizzForNumbersDivisibleBy3">
		<cfscript>
		assertEquals('Fizz', variables.fizzBuzz.answer(3));
		</cfscript>
	</cffunction>
	
</cfcomponent>