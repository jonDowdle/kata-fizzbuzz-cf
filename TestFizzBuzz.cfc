<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

</cfcomponent>