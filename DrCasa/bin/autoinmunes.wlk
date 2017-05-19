import enfermedades.*

class Autoinmunes inherits Enfermedades{
	
	constructor(_celulasAmenazadas) = super(_celulasAmenazadas)
	
	method efectoQueProvoca(_persona){
		_persona.celulas(_persona.celulas() - celulasAmenazadas)
	}	
}