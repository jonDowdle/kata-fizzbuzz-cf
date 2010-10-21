<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public" hint="I run before every test">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- numbers_divisible_by_3_return_Fizz --->
<cffunction name="test_numbers_divisible_by_3_return_Fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_3_return_Fizz_try_9" returntype="void" access="public">
	<cfset var result = obj.answer('9')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_divisible_by_5_return_Buzz--->
<cffunction name="test_numbers_divisible_by_5_return_Buzz" returntype="void" access="public">
	<cfset var result = obj.answer('5')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_5_return_Buzz_try_25" returntype="void" access="public">
	<cfset var result = obj.answer('25')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_divisible_by_both_3_and_5_return_FizzBuzz--->
<cffunction name="test_numbers_divisible_by_both_3_and_5_return_FizzBuzz" returntype="void" access="public">
	<cfset var result = obj.answer('15')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_divisible_by_both_3_and_5_return_FizzBuzz" returntype="void" access="public">
	<cfset var result = obj.answer('90')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_that_contain_3_will_return_Fizz--->
<cffunction name="test_numbers_that_contain_3_will_return_Fizz" returntype="void" access="public">
	<cfset var result = obj.answer('31')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_3_will_return_Fizz_try_103" returntype="void" access="public">
	<cfset var result = obj.answer('103')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_that_contain_5_will_return_Buzz--->
<cffunction name="test_numbers_that_contain_5_will_return_Buzz" returntype="void" access="public">
	<cfset var result = obj.answer('52')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_5_will_return_Buzz_try59" returntype="void" access="public">
	<cfset var result = obj.answer('59')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_that_contain_both_3_and_5_will_return_FizzBuzz--->
<cffunction name="test_numbers_that_contain_both_3_and_5_will_return_FizzBuzz" returntype="void" access="public">
	<cfset var result = obj.answer('53')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>
<cffunction name="test_numbers_that_contain_both_3_and_5_will_return_FizzBuzz_try153" returntype="void" access="public">
	<cfset var result = obj.answer('153')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- numbers_that_don't_meet_any_criteria_return_themselves --->
<cffunction name="test_numbers_that_don't_meet_any_criteria_return_themselves" returntype="void" access="public">
	<cfset var result = obj.answer('2')>
	<cfset var expected = '2'>
	<cfset assertEquals( expected,result,"Result should've been '#expected#' but was '#result#'")>
</cffunction>

<!--- letters_throw_an_exception --->
<cffunction name="test_letters_throw_an_exception" returntype="void" access="public">
	<cfscript>
	expectException('isNAN');	
	obj.answer('a');
	</cfscript>
</cffunction>
</cfcomponent>