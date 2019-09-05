class Elemento{
	var nombre
	var simbolo
	var orbitales = []
	method nombre(unNombre){
		nombre = unNombre
	}
	method simbolo(unSimbolo){
		simbolo = unSimbolo
	}
	method orbitales(listaOrbitales){
		orbitales = listaOrbitales
	}
	method cantidadDeOrbitales(){
		return orbitales.size()
	}
	method numeroAtomico(){
		return orbitales.sum({orbital => orbital.cantidadDeElectrones()})
	}
	method estaEstable(){
		return orbitales.all({orbital => orbital.estaCompleto()})
	}
	method esElegante(){
		return self.numeroAtomico() % 7 == 0 || self.estaEstable()
	}
	method formula(){
		return simbolo
	}
}

class OrbitalNivel1{
	var cantidadDeElectrones
	method cantidadDeElectrones(unosElectrones){
		cantidadDeElectrones = unosElectrones
	}
	method cantidadDeElectrones(){
		return cantidadDeElectrones
	}
	method estaCompleto(){
		return cantidadDeElectrones == 2
	}
}

class OrbitalNivelN{
	var cantidadDeElectrones
		method cantidadDeElectrones(unosElectrones){
		cantidadDeElectrones = unosElectrones
		}
	method cantidadDeElectrones(){
		return cantidadDeElectrones
	}
	method estaCompleto(){
		return cantidadDeElectrones == 8
		}
}

class Compuesto{
	var nombre
	var componentes = []
	method esElegante(){
		return componentes.all({elemento => elemento.esElegante()})
	}
}