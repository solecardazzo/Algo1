import persona.*
import enfermedades.*
import infecciosas.*
import autoinmunes.*

object enfermedades{
	var malaria = new Infecciosas(5000)
	var lupus = new Autoinmunes(10000)
	
	method malaria() = malaria
	method lupus() = lupus
}
object persona{
	var logan = new Persona(36.2, 1000000)
	
	method logan() = logan
}