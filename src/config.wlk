import puffle.*
import wollok.game.*
import direcciones.*
import level.*
import level1.*

object nivel {
	var property currentLevel = level1
	var property carpinchoMode = false

	method configuracionInicial(){
		game.title("Thin Ice")
		currentLevel.generateLevel()
		self.configurarTeclas()


		game.onCollideDo(puffle, {_object => puffle.completeLevel(_object)})
		game.onCollideDo(puffle, {_object => puffle.pickObject(_object)})
		game.onTick(250, "Update Sequentials", {=> self.updateSequentials()})
		
	}


	method updateSequentials() {
		currentLevel.sequentials().forEach({seq => 
			if(seq.value() < 4) {
				seq.value(seq.value() + 1)
			} else {
				seq.value(1)
			}
		})
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ puffle.move(left) })
		keyboard.right().onPressDo({ puffle.move(right) })
		keyboard.up().onPressDo({ puffle.move(up) })
		keyboard.down().onPressDo({ puffle.move(down) })
	
		keyboard.r().onPressDo({currentLevel.reset()})
		keyboard.s().onPressDo({self.startOST()})
		keyboard.c().onPressDo({self.alternarCarpincho()})
		keyboard.f().onPressDo({self.skipLevel()})
	}

	method alternarCarpincho() {
		if(carpinchoMode) {
			carpinchoMode = false
		} else {
			carpinchoMode = true
		}
	}

	method startOST() {
		const soundtrack = game.sound("./assets/audio/thin_ice_OST.mp3")
		soundtrack.initialize()
		soundtrack.play()
		soundtrack.shouldLoop(true)
		
	}

	method skipLevel() {
		currentLevel = currentLevel.nextLevel()
        currentLevel.reset()
	}
	
}


