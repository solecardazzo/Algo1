object roberto {
	var transporte
	const pesoPropio = 90

	method transporte(){
		return transporte
	}
	method setTransporte(unTransporte) {
		transporte = unTransporte
	}
	method pesoTotal() {
		return transporte.peso() + pesoPropio
	}
	method puedeHacerUnaLLamada() {
		return false
	}
}

object neo {
	var tieneCredito = false
	const pesoTotal = 0
	
	method pesoTotal() {
		return pesoTotal
	}
	method puedeHacerUnaLLamada() {
		return tieneCredito
	}
	method setTieneCredito(siONo){
		tieneCredito=siONo
	}
}

object chuck {
	const pesoPropio = 900

	method pesoTotal() {
		return pesoPropio
	}
	method puedeHacerUnaLLamada() {
		return true
	}
}