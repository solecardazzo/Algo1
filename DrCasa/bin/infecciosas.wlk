import enfermedades.*

class Infecciosas inherits Enfermedades{
	
	constructor(_celulasAmenazadas) = super(_celulasAmenazadas)
	
	method efectoQueProvoca(_persona){
		_persona.temperatura(_persona.temperatura() + celulasAmenazadas / 1000) 
	}
	method reproducirseAsiMismas(_persona){
		_persona.celulas(_persona.celulas() + celulasAmenazadas * 2)
	}
}