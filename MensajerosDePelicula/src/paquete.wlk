object paquete {
	var estaPago

	method puedeSerEntregado(mensajero, destino) {
		return destino.puedeSerAccedidoPor(mensajero) and estaPago
	}
	method setEstaPago(siONo){
		estaPago=siONo
	}
}