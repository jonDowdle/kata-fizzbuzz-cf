<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">

<cffunction name="setUp" returntype="void" access="public">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<cffunction name="test_3_returns_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizz' but was #result#")>
</cffunction>	

</cfcomponent>