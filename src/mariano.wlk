object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var golosinas=[]
	
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return golosinas
	}
	
	method comprar(unaGolosina) { golosinas.add(unaGolosina) }
	method comprarVarias(lista){golosinas.addAll(lista)}
	method vaciarBolsa(){golosinas.clear()}
	method desechar(unaGolosina){ golosinas.remove(unaGolosina)}
	method cantGolosinas()=golosinas.size()
	method tieneLaGolosina(unaGolosina)=golosinas.contains(unaGolosina)
	method probarGolosinas(){
		golosinas.forEach({g => g.mordisco()})
	}
	/*console.println("gusto:"+g.gusto()+" peso:"+g.peso()) */
	
	method hayGolosinasSinTacc()=
	golosinas.any({g => g.libreGluten()})
	
	/*method hayGolosinasSinTaccConAll()=
	 ! golosinas.all({g =>g.libreGluten()}) así da igual que con any*/
	
	method preciosCuidados()= golosinas.all({g => g.precio()<=10})
	
	/*method preciosCuidadosConAny()=
	 ! golosinas.any({g =>g.precio() >10})*/
	 
	 method golosinaDeSabor(unSabor)= golosinas.find({g=>g.gusto()==unSabor})
	 method golosinasDeSabor(unSabor)= golosinas.filter({ g => g.gusto()==unSabor})
	
	method sabores()= golosinas.map({g => g.gusto()}).asSet()
	
	method golosinaMasCara()=golosinas.max({g=> g.precio()})
	method precioGolosinaMasCara()=self.golosinaMasCara().precio()
	
	/*method golosinaMasCaraConMap()=
	       golosinas.map ({g => g.precio()}).max() */
	
	method pesoGolosinas()= golosinas.sum({g =>g.peso()})
	
	method golosinasFaltantes(golosinasDeseadas)=
	         golosinasDeseadas.asSet().difference(golosinas.asSet())
	
	/*method golosinasFaltantes(golosinasDeseadas)=
	         golosinas.asSet().difference(golosinasDeseadas.asSet()) golosina que tengo pero no está en la lista enviada*/
	
	method gustosFaltantes(gustosDeseados)=
	        gustosDeseados.asSet().difference(self.sabores())
	        
	method gastoEn(sabor)= self.golosinasDeSabor(sabor).sum({g => g.precio()})     
	        
	method precioDeLaGolosinaMasCaraDeUnSabor(sabor)=
	       self.golosinasDeSabor(sabor).max({g=>g.precio()}).precio()
	
	
	method cantidadGolosinasDeUnSabor(unSabor)=
	        self.golosinasDeSabor(unSabor).size()
	        
	method saborMasPopular()=
	     self.sabores().max({sabor=>self.cantidadGolosinasDeUnSabor(sabor)})
	
	
	
	        
	        
	        
}
