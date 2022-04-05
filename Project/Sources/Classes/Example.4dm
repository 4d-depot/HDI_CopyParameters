// Call different function depending on the first parameter and forward the parameters to this function
Function selectTask($task : Text) : Collection
	C_VARIANT:C1683(${2})
	
	TRACE:C157
	
	Case of 
		: ($1="Task1")
			// Call task1 function and forward parameters with the command Copy parameters(2)
			This:C1470.task1.apply(This:C1470; Copy parameters:C1790(2))
			
		: ($1="Task2")
			// Call task2 function and forward parameterswith the command Copy parameters(2)
			This:C1470.task2(Copy parameters:C1790(2))
			
	End case 
	
Function task1($t1 : Text; $t2 : Text)
	TRACE:C157
	ALERT:C41($t1+" "+$t2)
	
Function task2($c : Collection)
	TRACE:C157
	ALERT:C41("Sum: "+String:C10($c.sum()))
	
	