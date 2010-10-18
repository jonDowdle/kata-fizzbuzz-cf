component implements="iAnswerable" output="false" 
{
	public string function Answer(required any question) 
	output="false"
	{
		var local = {};
		local.answer = '';
		
		for( i = 1; i lte listLen(question); i++){
			item = listgetat(question, i);
			
			if( (find('3', item) gt 0 && find('5', item) gt 0) ||
				((item mod 3 eq 0) and (item mod 5 eq 0)) 
			){
				local.answer = listAppend(local.answer, 'fizzbuzz');
			}else	if( isFizz(item) ){
				local.answer  = listAppend(local.answer, 'fizz');
			}else if(item mod 5 eq 0 || find('5', item) gt 0){
				local.answer = listAppend(local.answer, 'buzz');
			}else{
				local.answer = listAppend(local.answer, item);
			}
		}	
		
		return local.answer;
	}
	
	private string function isFizz(required numeric number){
		return (number mod 3 eq 0) || (find('3', number) gt 0);
	}
}