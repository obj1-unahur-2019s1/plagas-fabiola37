class Plaga {
	const property poblacion = 10
	method transmicionDeEnfermedades(){ return poblacion >= 10 }
	
}
class Cucarachas inherits Plaga {
	
	var property pesoPromedio = 0
	
	method nivelDeDanio(){return poblacion / 2 }
	override method transmicionDeEnfermedades(){ return super() and  pesoPromedio >= 10 }
	override method atacar(elemento){ super(elemento) ; pesoPromedio + 2}
	
}
class Pulgas inherits Plaga {
	
	var property pesoPromedio = 0
	
	method nivelDeDanio(){return poblacion * 2 }
	method atacar(elemento){ poblacion *= 1.10 }
}
class Mosquitos inherits Plaga {

	var property pesoPromedio = 0
	
	method nivelDeDanio(){return poblacion }
	override method transmicionDeEnfermedades(){ return super() poblacion % 3 == 0}
	method atacar(){}
}
