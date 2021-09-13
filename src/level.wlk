import wollok.game.*
import puffle.*
import nivel.*
//import level1.*

class Level {
    const property solidTiles
    const property iceTiles
    const property doubleTiles
    const property lockTiles 
    const property keyTile
    const property moveableTile
    const property plateTile
    const property portalTileA
    const property portalTileB
    const property initialTile
    const property goalTile
    const property bonusTile
    const doesntRequirePlate
    var property plateIsPressed

    const property nextLevel

    method generateLevel() {
        self.solidTiles().forEach {solid => solid.render()} //se podria hacer solidTiles.forEach (etc) ?
        self.iceTiles().forEach {ice => ice.render()}
        self.doubleTiles().forEach {double => double.render()}
        self.lockTiles().forEach {lock => lock.render()}
        plateTile.render()
        moveableTile.render()
        self.keyTile().render()
        //self.initialTile().render()
        self.bonusTile().render()
        self.goalTile().render()
        game.addVisual(puffle)
    }

    method reset() {
        game.clear()
        nivel.configuracionInicial()
        puffle.position(initialTile.position())
        keyTile.pickedUp(false)
        plateIsPressed = doesntRequirePlate
    }

    method unlock() {
        if(plateIsPressed && (keyTile.pickedUp())){
            lockTiles.forEach({lock => lock.setWater()})
            puffle.redraw()
        }
    }

    //todo: implementar backgroundTiles donde no haya de otro tipo. Podría ser un PNG de background que tome toda la página
}

