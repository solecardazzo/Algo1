// Ejercicio dado por Lucas de Los Simpsons

object plantaNuclear {
    //var empleado = [homero, patoBalancin, barney]
    var empleado=[]  
        
    method nuevoEmpleado(nuevoEmpleado){
        empleado.add(nuevoEmpleado)
    }
    method despedirEmpleado(empleadoDespedido){
    	empleado.remove(empleadoDespedido)
    }
    method enPeligro(){
        return (deposito.muchasBarras() && self.todosDistraidos())  || mrsBurns.esPobre()
    }
    method todosDistraidos(){
    	return empleado.all({emple=>emple.estaDistraido()}) 
    }
    method pagarSueldos(){
    	empleado.forEach({emp=>emp.cobrarSueldo()})
        mrsBurns.cobrarSueldo()
    }
    method estaAbandonada(){
    	return empleado.isEmpty()
    }
    method funcionaBien(){
    	return self.totalDonas() > deposito.cantBarras()
    }
    method hayConflictoDeInteres(){
    	return empleado.contains(mrsBurns)
    }
    method comeDonas(){
    	return empleado.max({emp=>emp.cuantasDonas()})
    }
    method totalDonas(){
    	return  empleado.sum({e=>e.cuantasDonas()})
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
    method cobrarSueldo(){
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
    method cuantasDonas(){
    	return donas
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
    method cobrarSueldo(){
        //no hace nada 
    }
    method cuantasDonas(){
    	return 0
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
    method cuantasDonas(){
    	return 0
    }
}

object carl{
	var donasPorDia=[]
	var maxDonas=5
	
	method donasDelDia(cantComidas){
		donasPorDia.add(cantComidas)
	}
	method donasComidasElDia(unDiaDelMes){
		return donasPorDia.get(unDiaDelMes)
	}
	method estaDistraido(){
		return donasPorDia.sum()>maxDonas and donasPorDia.max()!=donasPorDia.last()
	}
	method cobrarSueldo(){
        //no hace nada 
    }
    method cuantasDonas(){
    	return donasPorDia.last()
    }
}
