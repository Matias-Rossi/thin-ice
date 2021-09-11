import puffle.*
import wollok.game.*
import direcciones.*
import level.*
import level1.*

object nivel {
	var property currentLevel = level1

	method configuracionInicial(){
		game.title("Thin Ice")
		currentLevel.generateLevel()
		self.configurarTeclas()


		game.onCollideDo(puffle, {_object => puffle.completeLevel(_object)})
		//game.onCollideDo(puffle, {_object => puffle.activateDouble(_object)})
		
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ puffle.move(left) })
		keyboard.right().onPressDo({ puffle.move(right) })
		keyboard.up().onPressDo({ puffle.move(up) })
		keyboard.down().onPressDo({ puffle.move(down) })
	
		keyboard.r().onPressDo({currentLevel.reset()})
		keyboard.s().onPressDo({self.startOST()})
		keyboard.c().onPressDo({puffle.alternarCarpincho()})
	}

	method startOST() {
		const soundtrack = game.sound("./assets/audio/thin_ice_OST.mp3")
		soundtrack.initialize()
		soundtrack.play()
		soundtrack.shouldLoop(true)
		
	}
	
}

class Coordinates {
	var property x;
	var property y;	
}

