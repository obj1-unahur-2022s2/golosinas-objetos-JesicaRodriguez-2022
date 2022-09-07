object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso =0.max(peso*0.8 - 1) }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso =0.max(peso*0.8) }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso =0.max(ppeso*0.8 - 1)) }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { if (peso >2)0.max(peso*0.9) }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { if (peso >70){peso*0.5} else {peso*0.75} }
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method peso(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() { return pesoInicial*0.5}
	method libreGluten() { return false }
	method gusto() { return "chocolate" }
	method peso() { return pesoActual }
	method mordisco() { pesoActual= 0.max(pesoActual-2)}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio()+2}
	method peso() {return golosinaInterior.peso()+4 }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	var property peso=5
	var property libreGluten=false
	const gustos=["frutilla","chocolate","naranja"]
	var cantMordiscos=0
	
	method peso() { return peso }
	method libreGluten() { return libreGluten }
	method precio()= if(libreGluten){7} else {10}
	method gusto() { return gustos.get(cantMordiscos%gustos.size()) }
	
	method mordisco() { cantMordiscos++}
		
}

	// como manejar el cambio de sabor ??


