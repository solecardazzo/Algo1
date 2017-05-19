
class Persona {
	var enfermedades=[]
	var temperatura
	var celulas
	
	constructor(_temperatura, _celulas){
		temperatura = _temperatura
		celulas=_celulas
	}
	
	method seEnferma(_enfermedad){ enfermedades.add(_enfermedad)}
	method seCura(_enfermedad){ enfermedades.remove(_enfermedad)}
	method tieneLaEnfermedad(_enfermedad) = enfermedades.contains(_enfermedad)
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
	method celulas() = celulas
	method celulas(_celulas) {celulas = _celulas}

}