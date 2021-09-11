import puffle.*
import wollok.game.*
import direcciones.*
import level.*
import level1.*

object nivel {
	var property nivel = level1

	method configuracionInicial(){
		game.title("Thin Ice")
		nivel.generateLevel()
		game.addVisual(puffle)
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

