
class Persona {
	var enfermedades=[]
	var temperatura
	
	constructor(_temperatura){
		temperatura = _temperatura
	}
	
	method seEnferma(_enfermedad){ enfermedades.add(_enfermedad)}
	method seCura(_enfermedad){ enfermedades.remove(_enfermedad)}
	method queEnfermedadTiene(_enfermedad) = enfermedades.contains(_enfermedad)
	method cadaDiaQueVive(){
		if (!enfermedades.isEmpty()){
			self.efectoDeLasEnfermedades()
		}		
	}
	method efectoDeLasEnfermedades(){
		return enfermedades.forEach({enf => enf.efectoQueProvoca(self)})
	}
	method temperatura() = temperatura
	method temperatura(_temperatura) {temperatura = _temperatura}

}