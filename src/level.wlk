import wollok.game.*
import puffle.*
import config.*
import seq.*
//import level1.*

class Level {
    const solidTiles
    const iceTiles
    const doubleTiles
    const lockTiles 
    const keyTile
    const moveableTile
    const  plateTile
    const property portalTileA
    const property portalTileB
    const property initialTile
    const property goalTile
    const bonusTile
    const doesntRequirePlate
    var property plateIsPressed
    var property sequentials = [
        new SeqTo4(value = 1),
        new SeqTo4(value = 2),
        new SeqTo4(value = 3),
        new SeqTo4(value = 4)
    ]

    const property nextLevel

    method generateLevel() {
        iceTiles.forEach {ice => ice.render()}
        solidTiles.forEach {solid => solid.render()}
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
        levelManager.configuracionInicial()
        puffle.position(initialTile.position())
        levelManager.currentLevel().relock()
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

