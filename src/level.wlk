import wollok.game.*
import puffle.*
import nivel.*
//import level1.*

class Level {
    const property solidTiles
    const property iceTiles
    const property initialTile
    const property goalTile
    const property bonusTile

    const property nextLevel

    method generateLevel() {
        self.solidTiles().forEach {solid => solid.render()}
        self.iceTiles().forEach {ice => ice.render()}
        //self.initialTile().render()
        self.bonusTile().render()
        self.goalTile().render()
        game.addVisual(puffle)
    }

    method reset() {
        game.clear()
        nivel.configuracionInicial()
        puffle.position(initialTile.position())
    }

    //todo: implementar backgroundTiles donde no haya de otro tipo. Podría ser un PNG de background que tome toda la página
}

