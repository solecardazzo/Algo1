// Gestionar los detalles de un juego
// Se modelan ciertos musicos que interactuarán posteriormente con los personajes creados por los usuarios.
object jimiHendrix {
	var canto=70
	var guitarra=90
	var bateria=0
	var bajo=60
	var piano=0
	var composicion=80
	var carisma=60
	var minimaHabilidad=0
	var maximaHabilidad=100
	var descontrol=0
	var maximoDescontrol=10
 	var umbralDeDescontrol=5

	method tocaConOtroMusico(unMusico){
		return (self.getCanto()==0 && unMusico.getCanto() > self.getCanto())
		or (self.getGuitarra()==0 && unMusico.getGuitarra() > self.getGuitarra())
		or (self.getBateria()==0 && unMusico.getBateria() > self.getBateria()) 
		or (self.getBajo()==0 && unMusico.getBajo() > self.getBajo()) 
		or (self.getPiano()==0 && unMusico.getPiano() > self.getPiano()) 
		or (self.getComposicion()==0 && unMusico.getComposicion() > self.getComposicion())
		or (self.getCarisma()==0 && unMusico.getCarisma() > self.getCarisma())
		or self.getDescontrol()==10
	}
	method getCanto(){
		return canto 
	}
	method getGuitarra(){
		return guitarra 
	}
	method getBateria(){
		return bateria 
	}
	method getBajo(){
		return bajo 
	}
	method getPiano(){
		return piano 
	}
	method getComposicion(){
		return composicion 
	}
	method getCarisma(){
		return carisma 
	}
	method getDescontrol(){
		return descontrol
	}	
	method descontrol(){
		if (descontrol<=maximoDescontrol)		
 		descontrol ++
		if (descontrol==maximoDescontrol){
			self.setCanto(minimaHabilidad)
			self.setGuitarra(minimaHabilidad)
			self.setBateria(minimaHabilidad)
			self.setBajo(minimaHabilidad)
			self.setPiano(minimaHabilidad)			
			self.setComposicion(minimaHabilidad)
			self.setCarisma(minimaHabilidad)
		} 
		if (descontrol>=umbralDeDescontrol && descontrol<maximaHabilidad){
			var auxiliar=(descontrol-descontrol+1)*umbralDeDescontrol
			self.setCanto(canto+auxiliar)
			self.setGuitarra(guitarra+auxiliar)
			self.setBateria(bateria+auxiliar)
			self.setBajo(bajo+auxiliar)
			self.setPiano(piano+auxiliar)
			self.setComposicion(composicion+auxiliar)
			self.setCarisma(carisma+auxiliar)
		}
	}	
	method setCanto(unValor){
		canto=unValor
		if (canto > maximaHabilidad) canto=maximaHabilidad
	}
	method setGuitarra(unValor){
		guitarra=unValor
		if (guitarra > maximaHabilidad) guitarra=maximaHabilidad
	}
	method setBateria(unValor){
		bateria=unValor		
		if (bateria > maximaHabilidad) bateria=maximaHabilidad
	}
	method setBajo(unValor){
		bajo=unValor
		if (bajo > maximaHabilidad)	bajo=maximaHabilidad	
	}
	method setPiano(unValor){
		piano=unValor	
		if (piano > maximaHabilidad) piano=maximaHabilidad
	}
	method setComposicion(unValor){
		composicion=unValor
		if (composicion > maximaHabilidad) composicion=maximaHabilidad
	}
	method setCarisma(unValor){
		carisma=unValor	
		if (carisma > maximaHabilidad) carisma=maximaHabilidad
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
		if (unMusico.getCanto()!=0) self.sumaHabilidades(unMusico.getCanto())		
		if (unMusico.getGuitarra()!=0) self.sumaHabilidades(unMusico.getGuitarra())
		if (unMusico.getBateria()!=0) self.sumaHabilidades(unMusico.getBateria())
		if (unMusico.getBajo()!=0) self.sumaHabilidades(unMusico.getBajo())
		if (unMusico.getPiano()!=0) self.sumaHabilidades(unMusico.getPiano())
		if (unMusico.getComposicion()!=0) self.sumaHabilidades(unMusico.getComposicion())		
		if (unMusico.getCarisma()!=0) self.sumaHabilidades(unMusico.getCarisma())
		return sumaHabilidades/cantidadHabilidades
	}
	method sumaHabilidades(unvalor){
		sumaHabilidades=sumaHabilidades+unvalor
		cantidadHabilidades=cantidadHabilidades+1
	}
	method getCanto(){
		if (!yokoNoEstaCerca) return canto-canto*valorADisminuir else return canto 
	}
	method getGuitarra(){
		if (!yokoNoEstaCerca) return guitarra-guitarra*valorADisminuir else return guitarra 
	}
	method getBateria(){
		if (!yokoNoEstaCerca) return bateria-bateria*valorADisminuir else return bateria 
	}
	method getBajo(){
		if (!yokoNoEstaCerca) return bajo-bajo*valorADisminuir else return bajo 
	}
	method getPiano(){
		if (!yokoNoEstaCerca) return piano-piano*valorADisminuir else return piano 
	}
	method getComposicion(){
		if (!yokoNoEstaCerca) return composicion-composicion*0.2 else return composicion 
	}
	method getCarisma(){
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
		return unMusico.getCanto()>self.getCanto() || unMusico.getGuitarra()>self.getGuitarra() ||	unMusico.getBateria()>self.getBateria() || unMusico.getBajo()>self.getBajo() ||	unMusico.getPiano()>self.getPiano() || unMusico.getComposicion()>self.getComposicion() || unMusico.getCarisma()>self.getCarisma()
	}	
	method getCanto(){
		return canto 
	}
	method getGuitarra(){
		return guitarra 
	}
	method getBateria(){
		return bateria 
	}
	method getBajo(){
		return bajo 
	}
	method getPiano(){
		return piano 
	}
	method getComposicion(){
		return composicion 
	}
	method getCarisma(){
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
	method getCanto(){
		return canto*self.nivelDeHumor() 
	}
	method getGuitarra(){
		return guitarra*self.nivelDeHumor()  
	}
	method getBateria(){
		return bateria*self.nivelDeHumor()  
	}
	method getBajo(){
		return bajo*self.nivelDeHumor()  
	}
	method getPiano(){
		return piano*self.nivelDeHumor()  
	}
	method getComposicion(){
		return composicion*self.nivelDeHumor()  
	}
	method getCarisma(){
		return carisma*self.nivelDeHumor()  
	}
}