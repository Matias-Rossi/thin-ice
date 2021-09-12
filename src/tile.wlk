import wollok.game.*
import puffle.*

class Tile {
    const property position
    const property isTile = true

    method render() {
        game.addVisual(self)
    }

    method setWater() {

    }
}

class Wall {
    const property start
    const property end
    const property orientation  //Se podría hacer analizar automáticamente, en vez de tener que ponerlo como entrada
    //const property type

    /*
    method render() {
        if(orientation == "x") {
            const xRange = ((start.x()) .. (end.x()))
            const tiles = xRange.map({xCoord => return new (position = game.at(xCoord, start.y()))})
            tiles.forEach({tile => tile.render()})

        } else if(orientation == "y") {
            const yRange = ((start.y()) .. (end.y()))
            const tiles = yRange.map({yCoord => return new type(position = game.at(start.x(), yCoord))})
            tiles.forEach({tile => tile.render()})

        }
    }
    */
}

class BackgroundTile inherits Tile {
    const property canBeSteppedOn = false
    const property isDouble = false
    const property isLock = false

    method image() {
        return "./assets/sprites/Tile/backgroundTile.png"
    }

}

class IceTile inherits Tile {
    const property canBeSteppedOn = true
    const property isDouble = false
    const property isLock = false

    const property description = "ice"


    method image() {
        return "./assets/sprites/Tile/iceTile.png"
    }

    override method setWater() {
        game.removeVisual(self)
        game.addVisual(new WaterTile(position = game.at(position.x(), position.y())))
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
    const property isDouble = false
    const property isLock = false
    const property description = "goal"


    method image() {
        return "./assets/sprites/Tile/goal.png"
    }
}

class SolidTile inherits Tile {
    const property canBeSteppedOn = false
    const property isDouble = false
    const property isLock = false
    const property description = "solid"


    method image() {
        return "./assets/sprites/Tile/solidTile.png"
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


    method image() {
        return "./assets/sprites/Tile/waterTile.png"
    }

}

class BonusTile inherits Tile {
    const property canBeSteppedOn = true
    var property pickedUp = false
    const property description = "bonus"


    method image() {
        return "./assets/sprites/specialItems/moneyBag.png"
    }
    //todo: implementar bonus
}

class DoubleTile inherits Tile {
    const property canBeSteppedOn = true
    const property description = "double"

    
    method image() {
        return "./assets/sprites/Tile/doubleTile.png"
    }

    override method setWater() {
        game.removeVisual(self)
        const iceTile = new IceTile(position = position)
        game.addVisual(iceTile)
        puffle.redraw()
    }


}

class LockTile inherits Tile {
    var property locked = true  //potentially unused
    const property description = "lock"



    method image() {
        return "./assets/sprites/Tile/lockTile.png"
    }

    override method setWater() {
        game.removeVisual(self)
        const iceTile = new IceTile(position = position)
        game.addVisual(iceTile)
    }
}

class KeyTile inherits Tile {
    const property canBeSteppedOn = true
    const property description = "key"
    
    method image() {
        return "./assets/sprites/specialItems/key.png"
    }
}


class Coordinates {
	var property x;
	var property y;	
}
