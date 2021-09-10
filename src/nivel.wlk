import puffle.*
import wollok.game.*
import direcciones.*
import level.*
import level1.*

object nivel {
	var property nivel = level1

	method configuracionInicial(){
		game.addVisual(puffle)
		nivel.loadLevel()
		//game.addVisual(manolo)
		//game.addVisual(arcoiris)
		//game.onCollideDo(pepita, { elemento => pepita.interaccion(elemento) })
		//game.onCollideDo(manolo, { elemento => manolo.interaccion(elemento) })
		self.configurarTeclas()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ puffle.move(left) })
		keyboard.right().onPressDo({ puffle.move(right) })
		keyboard.up().onPressDo({ puffle.move(up) })
		keyboard.down().onPressDo({ puffle.move(down) })
	
	}
	
}

class Coordinates {
	var property x;
	var property y;	
}
