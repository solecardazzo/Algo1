object empresa {
	var mensajeros=[]
	
	method mensajeros(){
		return mensajeros
	}
	method tieneMensajeroA(mensajero){
		return mensajeros.contains(mensajero)
	}
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
	method puedeSerEntregadoPorLaEmpresa(paquete,destino){
		return mensajeros.find({mens => paquete.puedeSerEntregado(mens,destino)})
	}
	method elPaqueteEsFacil(paquete,destino){
		return mensajeros.any({mens => paquete.puedeSerEntregado(mens,destino)})
	}
	method candidatosParaEnviarPaquete(paquete,destino){
		return mensajeros.filter({mens => paquete.puedeSerEntregado(mens,destino)})
	}
	method tieneSobrePeso(paquete,destino){
		return (mensajeros.sum({mens => mens.pesoTotal()})/mensajeros.size())>500
	}
	//Falta el punto 5 :/
}