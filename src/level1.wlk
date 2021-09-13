import wollok.game.*
import level.*
import tile.*
import level2.*
import level17.*
//temp

/*
object level1 {
    const solidTiles = [
        new Wall(
            start = game.at(1, 5),
            end = game.at(15, 5)
        ),
        new Wall(
            start = game.at(1, 3),
            end = game.at(15, 3)
        ),
        new Tile(
            position = game.at(1, 4)
        ),
        new Tile(
            position = game.at(15, 4)
        )
    ]
    const iceTiles = [
        new Wall(
            start = game.at(2, 4)
            end = game.at(15, 4)
        )
    ]
    const initialTile = game.at(14, 4)
    const bonusTile = game.at(-1,-1)
    const goalTile = game.at(1,4)

    method loadLevel() {

    }
}
*/

const level1 = new Level(
    solidTiles = level1Data.solidTiles(),
    iceTiles = [
        /*
        new Wall(
            start = game.at(2, 4),
            end = game.at(15, 4),
            orientation("x"),
            type iceTile
        )
        */
        new IceTile(position = game.at(3, 4)),
        new IceTile(position = game.at(4, 4)),
        new IceTile(position = game.at(5, 4)),
        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(7, 4)),
        new IceTile(position = game.at(8, 4)),
        new IceTile(position = game.at(9, 4)),
        new IceTile(position = game.at(10, 4)),
        new IceTile(position = game.at(11, 4)),
        new IceTile(position = game.at(12, 4)),
        new IceTile(position = game.at(13, 4)),
        new IceTile(position = game.at(14, 4))
    ],
    doubleTiles = [],
    moveableTile = new MoveableTile(initialPos = game.at(-1, -1)),
    plateTile = new PlateTile(position = game.at(-1, -1)),
    initialTile = new Tile(position = game.at(14, 4)),
    bonusTile = new BonusTile(position = game.at(-1,-1)),
    goalTile = new GoalTile(position = game.at(2,4)),
    nextLevel = level17,

    lockTiles = [],
    keyTile = new KeyTile(position = game.at(-1, -1)),
    //portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    //portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = true,
    plateIsPressed = true
)

object level1Data {
    const property solidTiles = [
        
        new SolidWall(
            start = new Coordinates(x = 1, y = 5),
            end = new Coordinates(x = 15, y = 5),
            orientation = "x"

        ),
        /*
        new Wall(
            start = Coordinates(x = 1, y = 3),
            end = Coordinates(x = 15, y = 3),
            orientation("x"),
            type solidTile
        ),
        */
        /*
        new SolidTile(position = game.at(1, 5)),
        new SolidTile(position = game.at(2, 5)),
        new SolidTile(position = game.at(3, 5)),
        new SolidTile(position = game.at(4, 5)),
        new SolidTile(position = game.at(5, 5)),
        new SolidTile(position = game.at(6, 5)),
        new SolidTile(position = game.at(7, 5)),
        new SolidTile(position = game.at(8, 5)),
        new SolidTile(position = game.at(9, 5)),
        new SolidTile(position = game.at(10, 5)),
        new SolidTile(position = game.at(11, 5)),
        new SolidTile(position = game.at(12, 5)),
        new SolidTile(position = game.at(13, 5)),
        new SolidTile(position = game.at(14, 5)),
        new SolidTile(position = game.at(15, 5)),
        */
        new SolidTile(position = game.at(1, 3)),
        new SolidTile(position = game.at(2, 3)),
        new SolidTile(position = game.at(3, 3)),
        new SolidTile(position = game.at(4, 3)),
        new SolidTile(position = game.at(5, 3)),
        new SolidTile(position = game.at(6, 3)),
        new SolidTile(position = game.at(7, 3)),
        new SolidTile(position = game.at(8, 3)),
        new SolidTile(position = game.at(9, 3)),
        new SolidTile(position = game.at(10, 3)),
        new SolidTile(position = game.at(11, 3)),
        new SolidTile(position = game.at(12, 3)),
        new SolidTile(position = game.at(13, 3)),
        new SolidTile(position = game.at(14, 3)),
        new SolidTile(position = game.at(15, 3)),
        new SolidTile(position = game.at(1, 4)),
        new SolidTile(position = game.at(15, 4))
    ]
}