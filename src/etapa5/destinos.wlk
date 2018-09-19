object patagonia{
	method energiaRevitalizadora() = 30
	
}

object sierrasCordobesas{
	method energiaRevitalizadora() = 70
}

// lo importante es que no me pasen nada por parámetro, para no tener que parametrizar
// a los otros objetos.
// usar la fecha directamente en el programa es un problema para hacer un test...
// las variables son sólo para cuando necesito un dato para siempre.
object marDelPlata{
	var esTemporadaAlta = false
	
	method energiaRevitalizadora() = 
		if (esTemporadaAlta) -2 else 80
		// me puedo ahorrar hacer self.esTemporadaAlta()
		// y evidentemente los signos en el if y else
		// también puedo igualar el method al resultado
	
	// construyendo un getter (u, opcionalmente, un setter)
	// puedo hacer var property:
	// var property esTemporadaAlta = false reemplaza
	//method esTemporadaAlta() = esTemporadaAlta
	//	method esTemporadaAlta(temporadaAlta){
	//	esTemporadaAlta = temporadaAlta
	//}
	method esTemporadaAlta() =
		if (temporada.esTemporadaAlta()) -20 else 80
}

// esto se settea con temporada.esTemporadaAlta(true) o (false) >> porque ya me 
// genera el setter y getter con el var property
object temporada{
	var property esTemporadaAlta = false
}

object noroeste{
	method energiaRevitalizadora(energiaActual) = // lo dejé acá
	// hay que pasarle el parámetro energiaActual a todos para que sea polimórfico
	// y también hay que hacer que pepita lleve self.energiaActual cuando va a los
	// destinos
}