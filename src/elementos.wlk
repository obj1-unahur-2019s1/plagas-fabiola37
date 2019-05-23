import elementos.*

class Hogar{
	var property nivelDeMugre = 0
	var property confortQueOfrece = 0
	
	method esBueno(){ return nivelDeMugre <= (confortQueOfrece / 2 ) }
	method ataque(plaga){ return nivelDeMugre == plaga.nivelDeDanio() }
}
class Huerta{ 
	var property capacidadDeProduccion = 0
	
	method esBueno(){ return capacidadDeProduccion > configuracionHuerta.nivelActual()}
	method ataque(plaga){ capacidadDeProduccion -= plaga.nivelDeDanio()} 
}
object configuracionHuerta {
	
	var property nivelActual = 0
}
class Mascota {
	var property nivelDeSalud = 250
	
	method esBueno(){return nivelDeSalud > 250}
}
class Barrios {
	var property elementos = []
	
	method agrgarElemento(elemento){elementos.add(elemento)}
	method quitarElemento(elemento){elementos.remove(elemento)}
	method esCopado(){return elementos.filter({ elemento => elemento.esBueno()})}
	method noEsCopado(){return elementos.filter({ elemento => not elemento.esBueno()})}
	method copadoONo(){return self.esCopado().size() > self.noEsCopado().size()}
	
	
}
