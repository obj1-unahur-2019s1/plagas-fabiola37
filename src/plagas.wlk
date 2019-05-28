class Plaga {
	var property poblacion = 10
	method transmicionDeEnfermedades(){ return poblacion >= 10 }
	method atacar(elemento){ elemento.ataque(self)
							poblacion += (poblacion*(10/100))
	}
	
}
class Cucarachas inherits Plaga {
	
	var property pesoPromedio = 0
	
	method nivelDeDanio(){return poblacion / 2 }
	override method transmicionDeEnfermedades(){ return super() and  pesoPromedio >= 10 }
	override method atacar(elemento){ super(elemento)  pesoPromedio += 2}
	
}
class Pulgas inherits Plaga {
	
	var property pesoPromedio = 0
	
	method nivelDeDanio(){return poblacion * 2 }
	
}
class Garrapatas inherits Plaga{
	
	method nivelDeDanio(){ return poblacion *2 }
	override method transmicionDeEnfermedades(){ return super() and poblacion >= 10}
	override method atacar(elemento){ poblacion +=2 elemento.ataque() }
}
class Mosquitos inherits Plaga {

	
	
	method nivelDeDanio(){return poblacion }
	override method transmicionDeEnfermedades(){ return super() and  poblacion % 3 == 0}
	method atacar(){}
}
