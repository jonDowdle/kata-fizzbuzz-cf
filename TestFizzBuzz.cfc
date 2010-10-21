<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public" hint="I run before every test">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- Numbers divisible by 3 return fizz
3_returns_fizz
numbers_divisible_by_3_return_Fizz 
--->
<cffunction name="test_3_returns_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_3_return_Fizz" returntype="void" access="public">
	<cfset var result = obj.answer('9')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- Numbers divisible by 5 return buzz
5_returns_buzz
numbers_divisible_by_5_return_buzz
--->
<cffunction name="test_5_returns_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('5')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_5_return_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('10')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- Numbers divisible by 3 & 5 return fizzbuzz 
15_returns_fizzbuzz
numbers_divisible_by_both_3_and_5_return_fizzbuzz
--->
<cffunction name="test_15_returns_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('15')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_both_3_and_5_return_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('90')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- Numbers containing 3 return fizz
31_returns_fizz
numbers_that_contain_3_will_return_fizz
--->
<cffunction name="test_31_returns_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('31')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_3_will_return_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('131')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- Numbers containing 5 return buzz
52_returns_buzz
numbers_that_contain_5_will_return_buzz
--->
<cffunction name="test_52_returns_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('52')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_5_will_return_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('59')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- Numbers containing 3 & 5 return buzz
53_returns_fizzbuzz
numbers_that_contain_both_3_and_5_will_return_fizzbuzz
--->
<cffunction name="test_53_returns_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('53')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_both_3_and_5_will_return_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('153')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- 
numbers_that_don't_meet_any_criteria_return_themselves 
--->
<cffunction name="test_numbers_that_don't_meet_any_criteria_return_themselves" returntype="void" access="public">
	<cfset var result = obj.answer('2')>
	<cfset var expected = '2'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- 
letters_throw_an_exception 
--->
<cffunction name="test_letters_throw_an_exception" returntype="void" access="public">
	<cfscript>
	expectException('isNAN');	
	obj.answer('z');
	</cfscript>
</cffunction>

</cfcomponent>