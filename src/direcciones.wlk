object izquierda {
	method proximaPosicion(posicionActual) = posicionActual.left(1) 
}

object derecha {
	method proximaPosicion(posicionActual) = posicionActual.right(1) 
}

object arriba {
	method proximaPosicion(posicionActual) = posicionActual.up(1) 
}

object abajo {
	method proximaPosicion(posicionActual) = posicionActual.down(1) 
}