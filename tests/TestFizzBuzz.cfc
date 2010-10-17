<cfcomponent displayname="TestFizzBuzz" extends="mxunit.framework.TestCase">
	<cffunction name="setUp" returntype="void" access="public">
		<cfset variables.fizzBuzz = createObject("component","../fizzbuzz") />
	</cffunction>

	<cffunction name="fizzForNumbersDivisibleBy3SingleValue">
		<cfscript>
		assertEquals('Fizz', variables.fizzBuzz.answer('3'));
		</cfscript>
	</cffunction>
	
	<cffunction name="fizzForNumbersDivisibleBy3MultiValue">
		<cfscript>
		assertEquals('Fizz,Fizz,Fizz', variables.fizzBuzz.answer('3,6,9'));
		</cfscript>
	</cffunction>	
	
	<cffunction name="buzzForNumbersDivisibleBy5SingleValue">
		<cfscript>
			assertEquals('Buzz', variables.fizzBuzz.answer('5'));
		</cfscript>
	</cffunction>
	
	<cffunction name="buzzForNumbersDivisibleBy5MultiValue">
		<cfscript>
			assertEquals('Buzz,Buzz,Buzz', variables.fizzBuzz.answer('5,10,25'));
		</cfscript>
	</cffunction>
	
	<cffunction name="fizzbuzzForNumbersDivisibleBy3and5SingleValue">
		<cfscript>assertEquals('FizzBuzz', variables.fizzBuzz.answer('15'))</cfscript>
	</cffunction>
	
	<cffunction name="fizzbuzzForNumbersDivisibleBy3and5MultiValue">
		<cfscript>assertEquals('FizzBuzz,FizzBuzz,FizzBuzz', variables.fizzBuzz.answer('15,30,60'))</cfscript>
	</cffunction>
	
	<cffunction name="fizzForNumbersContaining3">
		<cfscript>assertEquals('Fizz', variables.fizzBuzz.answer('13'));</cfscript>
	</cffunction>
	
	<cffunction name="buzzForNumbersContaining5">
		<cfscript>assertEquals('buzz', variables.fizzBuzz.answer('58'));</cfscript>
	</cffunction>
	
	<cffunction name="testContainingMultiplesOf3and5">
		<cfscript>assertEquals('FizzBuzz,FizzBuzz,Fizz', variables.fizzbuzz.answer('15,30,18'));</cfscript>
	</cffunction>
	
	<cffunction name="testContainingNumeral3and5">
		<cfscript>assertEquals('Fizz,Buzz,Fizz', variables.fizzbuzz.answer('13,52,34'));</cfscript>
	</cffunction>
	
</cfcomponent>