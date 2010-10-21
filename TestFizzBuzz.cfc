<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public" hint="I run before every test">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- 
3_returns_fizz
numbers_divisible_by_3_return_Fizz 
--->


<!---
5_returns_fizz 
numbers_divisible_by_5_return_buzz
--->


<!--- 
15_returns_fizzbuzz
numbers_divisible_by_both_3_and_5_return_fizzbuzz
--->


<!--- 
31_returns_fizz
numbers_that_contain_3_will_return_fizz
--->


<!---
52_returns_buzz
numbers_that_contain_5_will_return_buzz
--->


<!---
53_returns_fizzbuzz
numbers_that_contain_both_3_and_5_will_return_fizzbuzz
--->


<!--- 
numbers_that_don't_meet_any_criteria_return_themselves 
--->


<!--- 
letters_throw_an_exception 
--->


</cfcomponent>