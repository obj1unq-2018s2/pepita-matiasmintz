
object pepon {
	var energia = 0
	method energia() {return energia}
	method comer(cosa, cuanto) { energia += cosa.energiaPorGramo() * cuanto /2 }  // implementar
	method volar(kms) { energia -= (kms / 2) + 1 }
	method haceLoQueQuieras() {
		self.volar(1)
	}
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	method kmsRecorridos(){}
	method gramosIngeridos(){}
	method haceLoQueQuieras() { }   // queda asi
}
