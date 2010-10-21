<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
<cffunction name="setUp" returntype="void" access="public" hint="I run before every test">
	<cfset variables.obj = createObject("component","fizzbuzz") />
</cffunction>

<!--- numbers_divisible_by_3_return_Fizz --->


<!--- numbers_divisible_by_5_return_Buzz--->


<!--- numbers_divisible_by_both_3_and_5_return_FizzBuzz--->


<!--- numbers_that_contain_3_will_return_Fizz--->


<!--- numbers_that_contain_5_will_return_Buzz--->


<!--- numbers_that_contain_both_3_and_5_will_return_FizzBuzz--->


<!--- numbers_that_don't_meet_any_criteria_return_themselves --->


<!--- letters_throw_an_exception --->
</cfcomponent>