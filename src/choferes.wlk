
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object ludmila {
	method precioPactadoPorKm() {return 18}
}

object anamaria {
	method precioPactadoPorKm() {return 30}
}
object teresa {
	method precioPactadoPorKm() {return 22}
}

object gabriela {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms * 1.20
	}
}

object mariela {
	method precioViaje(cliente, kms) { 
		var viajeprecio = cliente.precioPactadoPorKm() * kms
		return viajeprecio.max(50)
	}
}
object juana{
	method precioViaje(cliente, kms) {if(kms<=8){return 100}
		else{return 200}
	}
}
object lucia {
	var remisero=null
	method choferQueReemplaza(chofer) {remisero = chofer}
	method precioViaje(cliente, kms) {remisero.precioViaje(cliente,kms)}
}

object melina {
	method precioViaje(cliente, kms) {
		var precio = cliente.precioPactadoPorKm()
		return (precio -3) * kms
	}
}
object oficina{
	var remisero1=null
	var remisero2=null
	var aux=null
	method asignarChoferes(chofer1, chofer2) {
		remisero1=chofer1
		remisero2=chofer2
	}
	method cambiarPrimerChoferPor(chofer){remisero1=chofer}
	method cambiarSegundoChoferPor(chofer){remisero2=chofer}
	method intercambiarChoferes() {
		aux=remisero2
		remisero2=remisero1
		remisero1=aux
	}
	method choferElegidoParaViaje(cliente, kms) {
		var precio1=remisero1.precioViaje(cliente,kms)
		var precio2=remisero2.precioViaje(cliente, kms)
		if ((precio1<precio2)and(precio2-precio1)>30){return remisero1.precioViaje(cliente, kms)}
		else {return remisero2.precioViaje(cliente, kms)}
	}
}
