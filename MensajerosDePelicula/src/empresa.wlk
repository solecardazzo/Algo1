object empresa {
	var mensajeros=[]
	
	method contratarUnMensajero(mensajero){
		mensajeros.add(mensajero)
	}
	method despedirUnMensajer(mensajero){
		mensajeros.remove(mensajero)
	}
	method despedirTodosLosMensajeros(){
		mensajeros.clear()
	}
	method esGrande(){
		return mensajeros.size()>2
	}
	method puedeSerEntregadoPorElPrimerEmpleado(paquete,destino){
		return paquete.puedeSerEntregado(mensajeros.first(),destino)
	}
	method pesoDelUltimoEmpleado(){
		return mensajeros.last().pesoTotal()
	}
}