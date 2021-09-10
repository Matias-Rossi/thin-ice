import wollok.game.*

class Tile {
    const property position

    method create() {
        game.addVisual(self)
    }
}
/*
class Wall {
    const property start
    const property end
    const property orientation  //Se podría hacer analizar automáticamente, en vez de tener que ponerlo como entrada
    const property type

    method create() {
        if(orientation == "x") {
            const xRange = ((self.start().x())..(self.end().x()));
            var tiles = xRange.map(xCoord => {return type(position = game.at(xCoord, self.start(y)))});
            tiles.forEach(tile => {tile.create()});

        } else if(orientation == "y") {
            const yRange = ((self.start().y()) .. (self.end().y()));
            var tiles = yRange.map(yCoord => {return type(position = game.at(self.start(x), yCoord))});
            tiles.forEach(tile => {tile.create()});

        }
    }
}
*/
class BackgroundTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "./assets/sprites/Tile/backgroundTile.png"
    }
}

class IceTile inherits Tile {
    const canBeSteppedOn = true

    method image() {
        return "./assets/sprites/Tile/iceTile.png"
    }

}


class GoalTile inherits Tile {
    const canBeSteppedOn = true

    method image() {
        return "./assets/sprites/Tile/goal.png"
    }
}

class SolidTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "./assets/sprites/Tile/solidTile.png"
    }

}

class WaterTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "./assets/sprites/Tile/waterTile.png"
    }

}

