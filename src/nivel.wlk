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
		game.onCollideDo(puffle, {_object => puffle.pickObject(_object)})
		//game.onCollideDo(puffle, {_object => puffle.activateDouble(_object)})
		game.onTick(250, "", {=> self.updateSequential()})
		
	}

	method updateSequential() {
			const value = currentLevel.sequential()
			if(value < 4) {
				currentLevel.sequential(value + 1)
			} else {
				currentLevel.sequential(1)
			}
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


