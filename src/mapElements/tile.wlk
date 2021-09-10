import wollok.game.*

class Tile {
    const property position

}

class IceTile inherits Tile {
    const canBeSteppedOn = true

    method image() {
        return "../../assets/sprites/Tile/iceTile.png"
    }
}

class BackgroundTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "../../assets/sprites/Tile/backgroundTile.png"
    }
}

class GoalTile inherits Tile {
    const canBeSteppedOn = true

    method image() {
        return "../../assets/sprites/Tile/goal.png"
    }
}

class SolidTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "../../assets/sprites/Tile/solidTile.png"
    }

}

class WaterTile inherits Tile {
    const canBeSteppedOn = false

    method image() {
        return "../../assets/sprites/Tile/waterTile.png"
    }

}