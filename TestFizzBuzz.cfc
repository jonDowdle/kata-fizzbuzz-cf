<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public" hint="I run before every test">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- Numbers divisible by 3 return fizz
3_returns_fizz
numbers_divisible_by_3_return_Fizz 
--->


<!--- Numbers divisible by 5 return buzz
5_returns_buzz
numbers_divisible_by_5_return_buzz
--->


<!--- Numbers divisible by 3 & 5 return fizzbuzz 
15_returns_fizzbuzz
numbers_divisible_by_both_3_and_5_return_fizzbuzz
--->


<!--- Numbers containing 3 return fizz
31_returns_fizz
numbers_that_contain_3_will_return_fizz
--->


<!--- Numbers containing 5 return buzz
52_returns_buzz
numbers_that_contain_5_will_return_buzz
--->


<!--- Numbers containing 3 & 5 return buzz
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