// Ejercicio dado por Lucas de Los Simpsons

object plantaNuclear {
    var empleado = [homero, patoBalancin, barney]
        
    method nuevoEmpleado(nuevoEmpleado){
        empleado.add(nuevoEmpleado)
        //empleado = nuevoEmpleado
    }
    method despedirEmpleado(empleadoDespedido){
    	empleado.remove(empleadoDespedido)
    }
    method enPeligro(){
        return (deposito.muchasBarras() && empleado.last().estaDistraido())  || mrsBurns.esPobre()
    }
    method pagarSueldos(){
        empleado.cobrarSueldo()
        mrsBurns.cobrarSueldo()
    }
    method estaAbandonada(){
    	return empleado.isEmpty()
    }
    method funcionaBien(){
    	return empleado.size() > deposito.cantBarras()
    }
    method hayConflictoDeInteres(){
    	return empleado.contains(mrsBurns)
    }
}

object deposito {
    var barras = 10000 
    method variarBarras(cantidad){
        barras += cantidad
    }
    method muchasBarras(){
        return barras > 4000
    }
    method cantBarras(){
    	return barras
    }
}

object patoBalancin{
    method estaDistraido(){
        return false
    }
    method cobraSueldor(){
        //no hace nada 
    }
    
}

object homero{
    var donas = 0
    const precioDona = 3
    const sueldo = 1000
    
    method cobrarSueldo(){
        self.comprarDonas(sueldo.div(precioDona))
    }
    method comprarDonas(cantidad){
        donas+=cantidad        
    }
    method comerDonas(cantidad){
        donas-=cantidad
    }
    method estaDistraido(){
        return  donas < 2
    }
}
object barney{
    var estadoEtilico = sobrio
    var temaFavorito = "jijiji"
    
    method tomar(){
        estadoEtilico = ebrio
    }
    method rescatarse(){
        estadoEtilico = sobrio 
    }
    method estaDistraido(temaEnLaRadio){
        return estadoEtilico.estaDistraido(self)
    }
    method estaAlegre(){
        return radio.tema() == temaFavorito
    }
}


object radio{
    method tema() {
        return "mi perro dinamita"
    }
}


object sobrio {
    method estaDistraido(alguien) {
        return alguien.estaAlegre()
    }
}

object ebrio {
    method estaDistraido(alguien) {
        return true
    }
}

object mrsBurns{
    var rico = false

    method esPobre(){
        return not rico
    }
    method cobrarSueldo(){
        rico = true
    }
}

object carl{
	var donasPorDia=[]
	
	method donasDelDia(cantComidas){
		donasPorDia.add(cantComidas)
	}
	method donasComidasElDia(unDiaDelMes){
		return donasPorDia.get(unDiaDelMes)
	}
	method estaDistraido(){
		return donasPorDia.last()>5 and donasPorDia.max()!=donasPorDia.last()
	}
}
