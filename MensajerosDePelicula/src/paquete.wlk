object paquete {
	var estaPago=false

	method puedeSerEntregado(mensajero, destino) {
		return destino.puedeSerAccedidoPor(mensajero) and estaPago
	}
	method setEstaPago(siONo){
		estaPago=siONo
	}
}