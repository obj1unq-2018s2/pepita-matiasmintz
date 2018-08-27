object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() = 20
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() = 9
}

object mijo{
	var calorias = 0 // arranca con el mijo sin procesar
	method mojarse(){
		calorias = 15
	}
	method secarse(){
		calorias = 20
	}
	method energiaPorGramo() = calorias
//	if (self.energiaPorGramo() == 0){
//		console.println("Hay que secar o mojar el mijo") //cómo hago esto?
//	}
}

object canelones{
	var salsa = false
	var queso = false
	var calorias = 20

	method conSalsa(){
		salsa = true
	}
	
	method sinSalsa(){
		salsa = false
	}
	
	method conQueso(){
		queso = true
	}
	
	method sinQueso(){
		salsa = false
	}
	
	method energiaPorGramo(){
		if(queso && salsa){
			calorias = 32
		} else if(queso || salsa){
			if(queso){
				calorias = 27
			} else{
				calorias = 25
			}
		}
		return calorias
	}
}