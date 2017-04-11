object puenteDeBrooklin {

	method puedeSerAccedidoPor(mensajero){
		 return mensajero.pesoTotal() < 1000
	}
}

object matrix {
	method puedeSerAccedidoPor(mensajero) {
		return mensajero.puedeHacerUnaLLamada()
	}
}