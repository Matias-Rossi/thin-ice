import wollok.game.*
import level.*
import tile.*
import level2.*

const level1 = new Level(
    solidTiles = [
        new SolidWall(
            start = new Coordinates(x = 1, y = 5),
            end = new Coordinates(x = 15, y = 5),
            orientation = "x"

        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 3),
            end = new Coordinates(x = 15, y = 3),
            orientation = "x"

        ),
        new SolidTile(position = game.at(1, 4)),
        new SolidTile(position = game.at(15, 4))
    ],
    iceTiles = [
        new IceWall(
            start = new Coordinates(x = 3, y = 4),
            end = new Coordinates(x = 14, y = 4),
            orientation = "x"
        )
    ],
    initialTile = new Tile(position = game.at(14, 4)),
    goalTile = new GoalTile(position = game.at(2,4)),
    nextLevel = level2,


    //unused
    doubleTiles = [],
    moveableTile = new MoveableTile(initialPos = game.at(-1, -1)),
    plateTile = new PlateTile(position = game.at(-1, -1)),
    bonusTile = new BonusTile(position = game.at(-1,-1)),
    lockTiles = [],
    keyTile = new KeyTile(position = game.at(-1, -1)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = true,
    plateIsPressed = true
)
