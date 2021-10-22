import wollok.game.*
import puffle.*
import config.*

class Tile {
    const property position

    method render() {
        game.addVisual(self)
    }

    method setWater() {

    }

    method redraw() {
        game.removeVisual(self)
        game.addVisual(self)
    }

}

class Wall {
    const property start
    const property end
    const property orientation  //Could be done automatically or even be removed and make the render method fill in both axis ¯\_(ツ)_/¯
}

class IceTile inherits Tile {
    const property canBeSteppedOn = true

    const property description = "ice"


    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/iceTile.png"
        } else {
            return "./assets/sprites/Tile/iceTile.png"
        }
    }

    override method setWater() {
        game.removeVisual(self)
        game.addVisual(new WaterTile(position = game.at(position.x(), position.y())))
        if (!levelManager.carpinchoMode()){
            new MeltingTile(position = position).melt()
        }
    }


}

class IceWall inherits Wall {

    method render() {
        if(orientation == "x") {
            const xRange = ((start.x()) .. (end.x()))
            const tiles = xRange.map({xCoord => return new IceTile(position = game.at(xCoord, start.y()))})
            tiles.forEach({tile => tile.render()})

        } else if(orientation == "y") {
            const yRange = ((start.y()) .. (end.y()))
            const tiles = yRange.map({yCoord => return new IceTile(position = game.at(start.x(), yCoord))})
            tiles.forEach({tile => tile.render()})

        }
    }

}


class GoalTile inherits Tile {
    const property canBeSteppedOn = true
    const property description = "goal"


    method image() {
        return "./assets/sprites/Tile/goal.png"
    }
}

class SolidTile inherits Tile {
    const property canBeSteppedOn = false
    const property description = "solid"


    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/solidTile.png"
        }
        else {
            return "./assets/sprites/Tile/solidTile.png"
        }
    }

}

class SolidWall inherits Wall {

    method render() {
        if(orientation == "x") {
            const xRange = ((start.x()) .. (end.x()))
            const tiles = xRange.map({xCoord => return new SolidTile(position = game.at(xCoord, start.y()))})
            tiles.forEach({tile => tile.render()})

        } else if(orientation == "y") {
            const yRange = ((start.y()) .. (end.y()))
            const tiles = yRange.map({yCoord => return new SolidTile(position = game.at(start.x(), yCoord))})
            tiles.forEach({tile => tile.render()})

        }
    }

}

class WaterTile inherits Tile {
    const property canBeSteppedOn = false
    const property description = "water"
    const rng = new Range(start = 0, end = 3).anyOne()

    


    method image() {

        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/waterTile.png"
        }
        else {
            return "./assets/sprites/Tile/waterTile" + levelManager.currentLevel().sequentials().get(rng).value() + ".png"
        }
        
    }

}

class BonusTile inherits Tile {
    const property canBeSteppedOn = true
    var property pickedUp = false
    const property description = "bonus"


    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/moneyBag.png"
        }
        else {
            return "./assets/sprites/specialItems/moneyBag.png"
        }
    }
        
    

    method pickBonus() {
        game.removeVisual(self)
        game.sound("./assets/audio/bonusPickUp.wav").play()
        //todo: implementar bonus (puntos)

    }
}

class DoubleTile inherits Tile {
    const property canBeSteppedOn = true
    const property description = "double"

    
    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/doubleTile.png"
        }
        else {
            return "./assets/sprites/Tile/doubleTile.png"
        }
        
    }

    override method setWater() {
        game.removeVisual(self)
        const iceTile = new IceTile(position = position)
        game.addVisual(iceTile)
        puffle.redraw()
    }


}

class LockTile inherits Tile {
    const property canBeSteppedOn = false
    var property locked = true 
    const property description = "lock"



    method image() {
        return "./assets/sprites/Tile/lockTile.png"
    }

    override method setWater() {
        
        if(game.hasVisual(self) && !locked && levelManager.currentLevel().plateIsPressed()){
            game.removeVisual(self)
            const iceTile = new IceTile(position = position)
            game.addVisual(iceTile)
            //game.sound("./assets/audio/unlock.wav").play() //todo: fix bug
            puffle.redraw()
        }
        
    }

    method unlock() {
        locked = false
    }

    method lock() {
        locked = true
    }
}

class KeyTile inherits Tile {
    const property canBeSteppedOn = true
    var property pickedUp = false
    const property description = "key"
    
    method image() {
        return "./assets/sprites/specialItems/key" + levelManager.currentLevel().sequentials().get(1).value() + ".png"
    }
}

class MoveableTile {
    const property canBeSteppedOn = false
    const property description = "moveable"
    const initialPos
    var property position = initialPos

    method render() {
        position = initialPos
        game.addVisual(self)
    }

    method setWater() {}


    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/moveableTile.png"
        }
        else {
            return "./assets/sprites/Tile/moveableTile.png"
        }
    }

    method push(direction){
        const nextTile = game.getObjectsIn(direction.nextPosition(position))

        self.redraw()
        if(nextTile.all({tile => tile.canBeSteppedOn()})) {
            if(nextTile.any({tile => tile.description() == "portal"})) {
                const portal = nextTile.find({tile => tile.description() == "portal"})
                position = portal.teleportTo()
                game.schedule(75, {=> self.push(direction)})
            }
            
            position = direction.nextPosition(position)
            game.schedule(75, {=> self.push(direction)})
        }

        if(game.getObjectsIn(position).any({_object => _object.description() == "plate"})) {
            game.getObjectsIn(position).find({_object => _object.description() == "plate"}).active(true)
            levelManager.currentLevel().plateIsPressed(true)
            levelManager.currentLevel().unlock()
        }
    }

    method redraw() {
        game.removeVisual(self)
        game.addVisual(self)
    }
}

class PlateTile inherits Tile {
    const property canBeSteppedOn = true
    var property active = false
    const property description = "plate"


    method image() {
        if(levelManager.carpinchoMode()){
            return "./assets/sprites/carp/pressurePlate.png"
        }
        else {
            return "./assets/sprites/Tile/pressurePlate.png"
            
        }
    }

}

class PortalTile inherits Tile {
    const property canBeSteppedOn = true
    const property teleportTo
    const property description = "portal"
    const rng = new Range(start = 0, end = 3).anyOne()

    method image() {
        return "./assets/sprites/Tile/portal" + levelManager.currentLevel().sequentials().get(rng).value() + "Tile.png" //todo: fix
    }

    
}

class MeltingTile inherits Tile {
    const property canBeSteppedOn = false
    const property description = "melting"
    var property image = "./assets/sprites/Tile/melting1Tile.png"

    method melt() {
        game.addVisual(self)
        image = "./assets/sprites/Tile/melting1Tile.png"
        game.schedule(50, {=> image = "./assets/sprites/Tile/melting2Tile.png"})
        game.schedule(100, {=> image = "./assets/sprites/Tile/melting3Tile.png"})
        game.schedule(150, {=> game.removeVisual(self)})
    }

    
}


class Coordinates {
	var property x;
	var property y;	
}
