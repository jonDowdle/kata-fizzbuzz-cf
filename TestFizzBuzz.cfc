component extends="mxunit.framework.TestCase"
{
	public void function setUp(){
		fb = createObject("component","fizzbuzz");
	}
	
	public void function test_3_should_return_fizz(){
		var result = fb.answer('3');
		assertequals('fizz', result);  
	}
}
