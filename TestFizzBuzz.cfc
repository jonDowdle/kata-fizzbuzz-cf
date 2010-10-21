<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- Numbers divisible by 3 return fizz --->
<cffunction name="test_3_returns_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_5_returns_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('5')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_div_3and5_return_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('15')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_num_contains_3_return_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('31')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_num_contain_5_return_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('51')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_num_contains_3and5_returns_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('53')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_normal_num_returns_self" returntype="void" access="public">
	<cfset var result = obj.answer('2')>
	<cfset var expected = '2'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<cffunction name="test_letter_throws_exception" mxunit:expectedException='isNAN' 
						returntype="void" access="public">
	<cfset var result = obj.answer('a')>
	<cfset var expected = 'asdf'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
</cfcomponent>