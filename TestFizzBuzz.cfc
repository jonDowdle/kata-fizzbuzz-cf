<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<cffunction name="test_3_returns_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizz' but was #result#")>
</cffunction>

<cffunction name="test_3_multiples_of_3_return_fizz_fizz_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('3,9,12')>
	<cfset var expected = 'fizz,fizz,fizz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizz,fizz,fizz' but was #result#")>
</cffunction>

<cffunction name="test_5_returns_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('5')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been 'buzz' but was #result#")>
</cffunction>

<cffunction name="test_3_multiples_of_5_return_buzz_buzz_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('5,10,25')>
	<cfset var expected = 'buzz,buzz,buzz'>
	<cfset assertEquals( expected,result,"Result should've been 'buzz,buzz,buzz' but was #result#")>
</cffunction>

<cffunction name="test_15_returns_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('15')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizzbuzz' but was #result#")>
</cffunction>

<cffunction name="test_3_multiples_of_3_and_5_return_fizzbuzz_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('30,60,90')>
	<cfset var expected = 'fizzbuzz,fizzbuzz,fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizzbuzz,fizzbuzz,fizzbuzz' but was #result#")>
</cffunction>

<cffunction name="test_numbers_with_5_return_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('52')>
	<cfset var expected = 'buzz'>
	<cfset assertEquals( expected,result,"Result should've been 'buzz' but was #result#")>
</cffunction>

<cffunction name="test_3_numbers_with_5_return_buzz_buzz_buzz" returntype="void" access="public">
	<cfset var result = obj.answer('52,59,56')>
	<cfset var expected = 'buzz,buzz,buzz'>
	<cfset assertEquals( expected,result,"Result should've been 'buzz,buzz,buzz' but was #result#")>
</cffunction>

<cffunction name="test_numbers_with_3_return_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('13')>
	<cfset var expected = 'fizz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizz' but was #result#")>
</cffunction>
<cffunction name="test_3_numbers_with_3_return_fizz_fizz_fizz" returntype="void" access="public">
	<cfset var result = obj.answer('13,31,32')>
	<cfset var expected = 'fizz,fizz,fizz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizz,fizz,fizz' but was #result#")>
</cffunction>

<cffunction name="test_53_returns_fizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('53')>
	<cfset var expected = 'fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizzbuzz' but was #result#")>
</cffunction>
<cffunction name="test_3_numbers_with_3and5_3xfizzbuzz" returntype="void" access="public">
	<cfset var result = obj.answer('53,153,253')>
	<cfset var expected = 'fizzbuzz,fizzbuzz,fizzbuzz'>
	<cfset assertEquals( expected,result,"Result should've been 'fizzbuzz,fizzbuzz,fizzbuzz' but was #result#")>
</cffunction>

<cffunction name="test_normal_number_returns_itself" returntype="void" access="public">
	<cfset var result = obj.answer('2')>
	<cfset var expected = '2'>
	<cfset assertEquals( expected,result,"Result should've been '2' but was #result#")>
</cffunction>

<cffunction name="test_normal_numbers_returns_themselves" returntype="void" access="public">
	<cfset var result = obj.answer('2,1,11')>
	<cfset var expected = '2,1,11'>
	<cfset assertEquals( expected,result,"Result should've been '2,1,11' but was #result#")>
</cffunction>

<cffunction name="test_throws_exception_on_letter" mxunit:expectedException="isNAN" returntype="void" access="public">
	<cfset var result = obj.answer('a')>
	<cfset var expected = 'exception'>
	<cfset assertEquals( expected,result,"Result should've been 'exception' but was #result#")>
</cffunction>


</cfcomponent>