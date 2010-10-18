component extends="mxunit.framework.TestCase"
{
	public void function setUp(){
		fb = createObject("component","fizzbuzz");
	}
	
	public void function test_3_should_return_fizz(){
		var result = fb.answer('3');
		var expected = 'fizz';
		assertequals(expected, result);
	}
	
	public void function test_multiple_of_3_should_return_fizz(){
		var result = fb.answer('6');
		var expected = 'fizz';
		assertequals(expected, result);
	}

	public void function test_multiple_of_3_list_should_return_fizzs(){
		var result = fb.answer('6,18');
		var expected = 'fizz,fizz';
		assertequals(expected, result);
	}
	
	public void function test_5_should_return_buzz(){
		var result = fb.answer('5');
		var expected = 'buzz';
		assertequals(expected, result);
	}
	public void function test_multiple_of_5_should_return_buzz(){
		var result = fb.answer('25');
		var expected = 'buzz';
		assertequals(expected, result);
	}
	public void function test_multiple_of_5_list_should_return_buzzs(){
		var result = fb.answer('5,25');
		var expected = 'buzz,buzz';
		assertequals(expected, result);
	}
	
	public void function test_number_that_contain_3_return_fizz(){
		var result = fb.answer('13');
		var expected = 'fizz';
		assertequals(expected, result);
	}
	public void function test_numbers_that_contain_3_return_fizz(){
		var result = fb.answer('13,23,43');
		var expected = 'fizz,fizz,fizz';
		assertequals(expected, result);
	}
	
	public void function test_number_that_contain_5_return_buzz(){
		var result = fb.answer('52');
		var expected = 'buzz';
		assertequals(expected, result);
	}
	
	public void function test_number_that_contain_3_and_5_return_fizzbuzz(){
		var result = fb.answer('53');
		var expected = 'fizzbuzz';
		assertequals(expected, result);
	}
	
	public void function test_list_of_multiples_of_3_and_5(){
		var result = fb.answer('3,5,15');
		var expected = 'fizz,buzz,fizzbuzz';
		assertEquals(expected, result);
	}	
	
	public void function test_number_2_should_return_2(){
		var result = fb.answer('2');
		var expected = '2';
		assertEquals(expected, result);
	}
	public void function test_non_fizzbuzz_list(){
		var result = fb.answer('2,4,97');
		var expected = '2,4,97';
		assertEquals(expected, result);
	}
}
