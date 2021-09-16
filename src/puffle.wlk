import wollok.game.*
import config.*
import level.*
import direcciones.*
import tile.*

object puffle {
    var property position = game.at(14,4)
    var property hasKey = false

    method image() {
        if(!levelManager.carpinchoMode()){
            return "./assets/sprites/specialItems/puff" + levelManager.currentLevel().sequentials().get(2).value() + ".png"

        } else {
            return "./assets/sprites/specialItems/carpincho.png"
        }
    }

    method move(direction) {
        const objectsInNextPosition = game.getObjectsIn(direction.nextPosition(position))

        //Check if the tile is free
        if(objectsInNextPosition.all({tile => tile.canBeSteppedOn()})){
            const colliders = game.getObjectsIn(position)
            colliders.forEach({tile => tile.setWater()})
            position = direction.nextPosition(position) 
            //game.sound("./assets/audio/move.wav").play() es horrible

            //Teleport if the tile is a portal
            if(objectsInNextPosition.any({tile => tile.description() == "portal"})) {
                const portal = objectsInNextPosition.find({tile => tile.description() == "portal"})
                position = portal.teleportTo()
            }
        }

        //Open lock
        else if(objectsInNextPosition.all({tile => tile.description() == "lock"})) {
            const colliders = game.getObjectsIn(direction.nextPosition(position))
            colliders.forEach({tile => tile.setWater()})
        }

        else if(objectsInNextPosition.any({tile => tile.description() == "moveable"})) {
            //Check if moveable has clear way. And yes, all this code is barely readeable...
            if(game.getObjectsIn(direction.nextPosition(direction.nextPosition(position))).all({tile => tile.canBeSteppedOn()})){ //todo: emprolijar
                const moveable = objectsInNextPosition.find({tile => tile.description() == "moveable"})
                moveable.push(direction)
                self.move(direction)
                game.sound("./assets/audio/push.wav").play()
            }
        }


        else { //deny move
            game.sound("./assets/audio/denyMove.wav").play()
        }

        //Redraw is made to avoid layer overlapping issues
        levelManager.currentLevel().portalTileA().redraw()
        levelManager.currentLevel().portalTileB().redraw()
        self.redraw()
    }

    method setWater() {}

    method completeLevel(_) {
        if(position == levelManager.currentLevel().goalTile().position()) {
            levelManager.currentLevel(levelManager.currentLevel().nextLevel())
            levelManager.currentLevel().reset()
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
            levelManager.currentLevel().unlock()
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