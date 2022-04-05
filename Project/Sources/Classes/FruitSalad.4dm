
Class constructor
	This:C1470.fruits:=New collection:C1472
	
	// Call different function depending on the first parameter and forward the parameters to this function
Function selectTask($task : Text) : Collection
	C_VARIANT:C1683(${2})
	
	TRACE:C157
	
	Case of 
		: ($1="addFruits")
			// Call combine function and forward $2, $3, and $n with the command Copy parameters(2)
			//This.addFruits.apply(This; Copy parameters(2))
			//This.fruits.combine(Copy parameters(2))
			
			This:C1470.myConcat:=Formula:C1597(This:C1470.fruits.concat($2; $3; $4))
			This:C1470.fruits:=This:C1470.myConcat.call(This:C1470; $2; $3; $4)
			
		: ($1="sortFruits")
			// Call sortFruits function and forward $2 of  with the command Copy parameters(2)
			//This.sortFruits.apply(This; Copy parameters(2))
			//This.fruits:=This.fruits.orderBy(Copy parameters(2))
			
			This:C1470.orderBy:=Formula:C1597(This:C1470.fruits.orderBy($1))
			This:C1470.fruits:=This:C1470.orderBy.call(This:C1470; 0)
			
		: ($1="addFruitsAndSecretIngredient")
			// Call addFruits function, forward $2, $3, and $n with the command Copy parameters(2), and add another parameter
			//This.addFruits.apply(This; Copy parameters(2).push("Strawberry"))
			This:C1470.fruits:=This:C1470.fruits.concat(Copy parameters:C1790(2).push("Strawberry"))
			
	End case 
	
	return This:C1470.fruits
	
	
Function addFruits()
	C_TEXT:C284(${1})
	This:C1470.fruits:=This:C1470.fruits.concat(Copy parameters:C1790)
	
	
Function sortFruits($order : Integer)
	This:C1470.fruits:=This:C1470.fruits.orderBy($order)
	
	
	
	
	
	