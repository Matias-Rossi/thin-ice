import wollok.game.*
import nivel.*
import level.*
import direcciones.*
import tile.*

object puffle {
    var property position = game.at(14,4) //nivel().initialTile() /*todo: implementar posicion inicial*/
    var property useCarpincho = false
    var property hasKey = false

    method image() {
        if(!useCarpincho){
            return "./assets/sprites/specialItems/puff.png"
        } else {
            return "./assets/sprites/specialItems/carpincho.png"
        }
    }

    method move(direction) {
        const objectsInNextPosition = game.getObjectsIn(direction.nextPosition(position))

        if(objectsInNextPosition.all({tile => tile.canBeSteppedOn()})){
            const colliders = game.getObjectsIn(position)
            colliders.forEach({tile => tile.setWater()})
            position = direction.nextPosition(position) 
        }
        if(objectsInNextPosition.all({tile => tile.description() == "lock"})) {
            //Probablemente todo esto al pedo
            const colliders = game.getObjectsIn(direction.nextPosition(position))
            colliders.forEach({tile => tile.setWater()})
        }

        if(objectsInNextPosition.any({tile => tile.description() == "moveable"})) {
            //Check if moveable has clear way
            if(game.getObjectsIn(direction.nextPosition(direction.nextPosition(position))).all({tile => tile.canBeSteppedOn()})){ //todo: emprolijar
                const moveable = objectsInNextPosition.find({tile => tile.description() == "moveable"})
                moveable.push(direction)
                self.move(direction)
            }
        }

        if(objectsInNextPosition.any({tile => tile.description() == "portal"})) {
            const portal = objectsInNextPosition.find({tile => tile.description() == "portal"})
            position = portal.teleportTo()
        }

        nivel.currentLevel().portalTileA().redraw()
        nivel.currentLevel().portalTileB().redraw()
        self.redraw()
        //else { hacer algun sonido} //todo:
    }

    method alternarCarpincho() {
        if(useCarpincho) {
            useCarpincho = false
        } else {
            useCarpincho = true
        }
    }

    method setWater() {}

    method completeLevel(_objeto) {
        if(position == nivel.currentLevel().goalTile().position()) {
            nivel.currentLevel(nivel.currentLevel().nextLevel())
            nivel.currentLevel().reset()
            game.sound("./assets/audio/nextLevel.wav").play()
        }
    }

    method activateDouble(_object) {
        if(_object.description() == "double") {
            _object.turnIntoIce()
            self.redraw()
        }
    }

    method pickObject(_object) {
        if(_object.description() == "key") {
            game.removeVisual(_object)
            _object.pickedUp(true)
            hasKey = true
            nivel.currentLevel().unlock()
            game.sound("./assets/audio/keyPickUp.wav").play()
            
        }
        else if(_object.description() == "bonus") {
            _object.pickBonus()
            //todo: pending points implementation
        }
    }

    method redraw() {
        game.removeVisual(self)
        game.addVisual(self)
    }
}