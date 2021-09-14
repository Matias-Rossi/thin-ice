import wollok.game.*
import puffle.*
import config.*
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
    var property sequential = 1

    const property nextLevel

    method generateLevel() {
        iceTiles.forEach {ice => ice.render()}
        solidTiles.forEach {solid => solid.render()} //se podria hacer solidTiles.forEach (etc) ?
        doubleTiles.forEach {double => double.render()}
        lockTiles.forEach {lock => lock.render()}
        plateTile.render()
        portalTileA.render()
        portalTileB.render()
        moveableTile.render()
        keyTile.render()
        bonusTile.render()
        goalTile.render()
        game.addVisual(puffle)
    }

    method reset() {
        game.clear()
        nivel.configuracionInicial()
        puffle.position(initialTile.position())
        nivel.currentLevel().relock()
        keyTile.pickedUp(false)
        plateIsPressed = doesntRequirePlate
    }

    method unlock() {
        if(plateIsPressed && (keyTile.pickedUp())){
            lockTiles.forEach({lock => lock.unlock()})
            puffle.redraw()
        }
    }

    method relock() {
        keyTile.pickedUp(false)
        lockTiles.forEach({lock => lock.lock()})
    }

    //todo: implementar backgroundTiles donde no haya de otro tipo. Podría ser un PNG de background que tome toda la página
}

