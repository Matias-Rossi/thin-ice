import wollok.game.*
import direcciones.*

object nivel {
	var nivel = 1

	method configuracionInicial(){
		game.addVisual(puffle)
		game.addVisual(manolo)
		game.addVisual(arcoiris)
		game.onCollideDo(pepita, { elemento => pepita.interaccion(elemento) })
		game.onCollideDo(manolo, { elemento => manolo.interaccion(elemento) })
		self.configurarTeclas()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ pepita.moverPara(izquierda) })
		keyboard.right().onPressDo({ pepita.moverPara(derecha) })
		keyboard.up().onPressDo({ pepita.moverPara(arriba) })
		keyboard.down().onPressDo({ pepita.moverPara(abajo) })
		
		keyboard.r().onPressDo({ pepita.cambiarColor(paleta.colorAlAzar()) } )
		keyboard.n().onPressDo({ aves.forEach({ave => ave.deciTuColor()}) })
	}
	
}
