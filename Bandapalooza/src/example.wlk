// Gestionar los detalles de un juego
// Se modelan ciertos musicos que que interactuarán posteriormente con los personajes creados por los usuarios.
object jimiHendrix {
	var canto=70
	var guitarra=90
	var bateria=0
	var bajo=60
	var piano=0
	var composicion=80
	var carisma=60
	var descontrol=0
	var contadorAuxiliar=1
	var maximaHabilidad=100
	
	method tocaConOtroMusico(unMusico){
		return (canto==0 && self.valorMayor(unMusico.darValorCanto(),canto)) || (guitarra==0 && self.valorMayor(unMusico.darValorGuitarra(),guitarra)) || (bateria==0 && self.valorMayor(unMusico.darValorBateria(),bateria)) || (bajo==0 && self.valorMayor(unMusico.darValorBajo(),bajo)) || (piano==0 && self.valorMayor(unMusico.darValorPiano(),piano)) || (composicion==0 && self.valorMayor(unMusico.darValorComposicion(),composicion)) || (carisma==0 && self.valorMayor(unMusico.darValorCarisma(),carisma))
	}
	method valorMayor(valor1,valor2){
		return valor1>valor2
	}
	method valorMayorIgual(valor1,valor2){
		return valor1>=valor2
	}
 	method descontrol(){
 		var maximoDescontrol=10
 		var umbralDeCorte=5
 		
 		descontrol ++
		if (self.valorMayorIgual(descontrol,maximoDescontrol)){
			canto=0
			guitarra=0
			bateria=0
			bajo=0
			piano=0			
			composicion=0
			carisma=0
		} 
		if (self.valorMayorIgual(descontrol,umbralDeCorte)){
			self.cambiarCanto(canto+(contadorAuxiliar*umbralDeCorte))
			self.cambiarGuitarra(guitarra+(contadorAuxiliar*umbralDeCorte))
			self.cambiarBateria(bateria+(contadorAuxiliar*umbralDeCorte))
			self.cambiarBajo(bajo+(contadorAuxiliar*umbralDeCorte))
			self.cambiarPiano(piano+(contadorAuxiliar*umbralDeCorte))
			self.cambiarComposicion(composicion+(contadorAuxiliar*umbralDeCorte))
			self.cambiarCarisma(carisma+(contadorAuxiliar*umbralDeCorte))
			contadorAuxiliar++
		}
		 		return descontrol
	}
	method cambiarCanto(unValor){
		canto=unValor
		if (self.valorMayorIgual(canto,maximaHabilidad)) canto=maximaHabilidad
	}
	method cambiarGuitarra(unValor){
		guitarra=unValor
		if (self.valorMayorIgual(guitarra,maximaHabilidad)) guitarra=maximaHabilidad
	}
	method cambiarBateria(unValor){
		bateria=unValor		
		if (self.valorMayorIgual(bateria,maximaHabilidad)) bateria=maximaHabilidad
	}
	method cambiarBajo(unValor){
		bajo=unValor
		if (self.valorMayorIgual(bajo,maximaHabilidad))	bajo=maximaHabilidad	
	}
	method cambiarPiano(unValor){
		piano=unValor	
		if (self.valorMayorIgual(piano,maximaHabilidad)) piano=maximaHabilidad
	}
	method cambiarComposicion(unValor){
		composicion=unValor
		if (self.valorMayorIgual(composicion,maximaHabilidad)) composicion=maximaHabilidad
	}
	method cambiarCarisma(unValor){
		carisma=unValor	
		if (self.valorMayorIgual(carisma,maximaHabilidad)) carisma=maximaHabilidad
	}
	method darValorCanto(){
		return canto 
	}
	method darValorGuitarra(){
		return guitarra 
	}
	method darValorBateria(){
		return bateria 
	}
	method darValorBajo(){
		return bajo 
	}
	method darValorPiano(){
		return piano 
	}
	method darValorComposicion(){
		return composicion 
	}
	method darValorCarisma(){
		return carisma 
	}
}

object johnLennon {
	var canto=70
	var guitarra=40
	var bateria=0
	var bajo=30
	var piano=50
	var composicion=90
	var carisma=80
	var umbralParaTocarConOtro=70
	var yokoNoEstaCerca=true
	var valorADisminuir=0.2 //20%
	var sumaHabilidades=0
	var cantidadHabilidades=0
	
	method tocaConOtroMusico(unMusico){
		return self.yokoNoEstaCerca() && self.promedioDeHabilidades(unMusico)>umbralParaTocarConOtro
	}
	method yokoNoEstaCerca(){
		return yokoNoEstaCerca
	}
	method promedioDeHabilidades(unMusico){
		if (unMusico.darValorCanto()!=0) self.sumaHabilidades(unMusico.darValorCanto())		
		if (unMusico.darValorGuitarra()!=0) self.sumaHabilidades(unMusico.darValorGuitarra())
		if (unMusico.darValorBateria()!=0) self.sumaHabilidades(unMusico.darValorBateria())
		if (unMusico.darValorBajo()!=0) self.sumaHabilidades(unMusico.darValorBajo())
		if (unMusico.darValorPiano()!=0) self.sumaHabilidades(unMusico.darValorPiano())
		if (unMusico.darValorComposicion()!=0) self.sumaHabilidades(unMusico.darValorComposicion())		
		if (unMusico.darValorCarisma()!=0) self.sumaHabilidades(unMusico.darValorCarisma())
		return sumaHabilidades/cantidadHabilidades
	}
	method sumaHabilidades(unvalor){
		sumaHabilidades=sumaHabilidades+unvalor
		cantidadHabilidades=cantidadHabilidades+1
	}
	method darValorCanto(){
		if (!yokoNoEstaCerca) return canto-canto*valorADisminuir else return canto 
	}
	method darValorGuitarra(){
		if (!yokoNoEstaCerca) return guitarra-guitarra*valorADisminuir else return guitarra 
	}
	method darValorBateria(){
		if (!yokoNoEstaCerca) return bateria-bateria*valorADisminuir else return bateria 
	}
	method darValorBajo(){
		if (!yokoNoEstaCerca) return bajo-bajo*valorADisminuir else return bajo 
	}
	method darValorPiano(){
		if (!yokoNoEstaCerca) return piano-piano*valorADisminuir else return piano 
	}
	method darValorComposicion(){
		if (!yokoNoEstaCerca) return composicion-composicion*0.2 else return composicion 
	}
	method darValorCarisma(){
		if (!yokoNoEstaCerca) return carisma-carisma*valorADisminuir else return carisma 
	}
}

object paulMcCartney {
	var canto=80
	var guitarra=60
	var bateria=20
	var bajo=70
	var piano=40
	var composicion=95
	var carisma=60
	
	method tocaConOtroMusico(unMusico){
		return unMusico.darValorCanto()>self.darValorCanto() || unMusico.darValorGuitarra()>self.darValorGuitarra() ||	unMusico.darValorBateria()>self.darValorBateria() || unMusico.darValorBajo()>self.darValorBajo() ||	unMusico.darValorPiano()>self.darValorPiano() || unMusico.darValorComposicion()>self.darValorComposicion() || unMusico.darValorCarisma()>self.darValorCarisma()
	}	
	method darValorCanto(){
		return canto 
	}
	method darValorGuitarra(){
		return guitarra 
	}
	method darValorBateria(){
		return bateria 
	}
	method darValorBajo(){
		return bajo 
	}
	method darValorPiano(){
		return piano 
	}
	method darValorComposicion(){
		return composicion 
	}
	method darValorCarisma(){
		return carisma 
	}
}

object charlyGarcia {
	var canto=60
	var guitarra=60
	var bateria=0
	var bajo=20
	var piano=80
	var composicion=90
	var carisma=65
	var umbralDeHumor=0.8
	var minimoAleatorio=0.0
	var maximoAleatorio=1
	
	method tocaConOtroMusico(unMusico){
		return self.nivelDeHumor()>umbralDeHumor
	}
	method nivelDeHumor(){
		return minimoAleatorio.randomUpTo(maximoAleatorio)
	}
	method darValorCanto(){
		return canto*self.nivelDeHumor() 
	}
	method darValorGuitarra(){
		return guitarra*self.nivelDeHumor()  
	}
	method darValorBateria(){
		return bateria*self.nivelDeHumor()  
	}
	method darValorBajo(){
		return bajo*self.nivelDeHumor()  
	}
	method darValorPiano(){
		return piano*self.nivelDeHumor()  
	}
	method darValorComposicion(){
		return composicion*self.nivelDeHumor()  
	}
	method darValorCarisma(){
		return carisma*self.nivelDeHumor()  
	}
}