import wollok.game.*
import level.*
import tile.*
import level16.* 
//temp

const level15 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 0, y = 14),
            end = new Coordinates(x = 18, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 9),
            end = new Coordinates(x = 17, y = 9),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 3),
            end = new Coordinates(x = 17, y = 3),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 1),
            end = new Coordinates(x = 6, y = 1),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 0),
            end = new Coordinates(x = 18, y = 0),
            orientation = "x"
        ),


        //vertical
        new SolidWall(
            start = new Coordinates(x = 0, y = 1),
            end = new Coordinates(x = 0, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 1),
            end = new Coordinates(x = 0, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 10),
            end = new Coordinates(x = 15, y = 12),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 18, y = 1),
            end = new Coordinates(x = 18, y = 13),
            orientation = "y"
        ),

        //single
        new SolidTile(position = game.at(1, 6)),
        new SolidTile(position = game.at(2, 2)),
        new SolidTile(position = game.at(2, 12)),
        new SolidTile(position = game.at(3, 4)),
        new SolidTile(position = game.at(3, 12)),
        new SolidTile(position = game.at(4, 2)),
        new SolidTile(position = game.at(6, 2)),
        new SolidTile(position = game.at(8, 2)),
        new SolidTile(position = game.at(9, 13)),
        new SolidTile(position = game.at(12, 13)),
        new SolidTile(position = game.at(14, 4)),
        new SolidTile(position = game.at(15, 4)),
        new SolidTile(position = game.at(17, 11))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 1, y = 13),
            end = new Coordinates(x = 8, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 13),
            end = new Coordinates(x = 17, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 12),
            end = new Coordinates(x = 9, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 11),
            end = new Coordinates(x = 9, y = 11),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 10),
            end = new Coordinates(x = 9, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 9),
            end = new Coordinates(x = 5, y = 9),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 9),
            end = new Coordinates(x = 14, y = 9),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 8),
            end = new Coordinates(x = 5, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 8),
            end = new Coordinates(x = 17, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 7),
            end = new Coordinates(x = 5, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 7),
            end = new Coordinates(x = 17, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 6, y = 6),
            end = new Coordinates(x = 11, y = 6),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 6),
            end = new Coordinates(x = 17, y = 6),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 6, y = 5),
            end = new Coordinates(x = 17, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 4),
            end = new Coordinates(x = 13, y = 4),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 3),
            end = new Coordinates(x = 13, y = 3),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 2),
            end = new Coordinates(x = 17, y = 2),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 3, y = 1),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 1),
            end = new Coordinates(x = 17, y = 1),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 14, y = 10),
            end = new Coordinates(x = 14, y = 12),
            orientation = "y"
        ),
        

        //single
        new IceTile(position = game.at(1, 2)),
        new IceTile(position = game.at(1, 4)),
        new IceTile(position = game.at(1, 12)),
        new IceTile(position = game.at(2, 4)),
        new IceTile(position = game.at(3, 2)),
        new IceTile(position = game.at(5, 2)),
        new IceTile(position = game.at(7, 2)),
        new IceTile(position = game.at(7, 8)),
        new IceTile(position = game.at(9, 9)),
        new IceTile(position = game.at(16, 4)),
        new IceTile(position = game.at(16, 10)),
        new IceTile(position = game.at(16, 12)),
        new IceTile(position = game.at(17, 4)),
        new IceTile(position = game.at(17, 12))
        

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(2, 5)),
        new DoubleTile(position = game.at(2, 6)),
        new DoubleTile(position = game.at(3, 5)),
        new DoubleTile(position = game.at(3, 6)),
        new DoubleTile(position = game.at(4, 5)),
        new DoubleTile(position = game.at(4, 6)),
        new DoubleTile(position = game.at(5, 5)),
        new DoubleTile(position = game.at(5, 6)),
        new DoubleTile(position = game.at(6, 7)),
        new DoubleTile(position = game.at(6, 8)),
        new DoubleTile(position = game.at(6, 9)),
        new DoubleTile(position = game.at(7, 9)),
        new DoubleTile(position = game.at(8, 8)),
        new DoubleTile(position = game.at(8, 9)),
        new DoubleTile(position = game.at(9, 8)),
        new DoubleTile(position = game.at(10, 8)),
        new DoubleTile(position = game.at(10, 9)),
        new DoubleTile(position = game.at(10, 10)),
        new DoubleTile(position = game.at(10, 11)),
        new DoubleTile(position = game.at(10, 12)),
        new DoubleTile(position = game.at(10, 13)),
        new DoubleTile(position = game.at(11, 10)),
        new DoubleTile(position = game.at(11, 11)),
        new DoubleTile(position = game.at(11, 12)),
        new DoubleTile(position = game.at(11, 13)),
        new DoubleTile(position = game.at(12, 6)),
        new DoubleTile(position = game.at(12, 10)),
        new DoubleTile(position = game.at(12, 11)),
        new DoubleTile(position = game.at(12, 12)),
        new DoubleTile(position = game.at(13, 10)),
        new DoubleTile(position = game.at(13, 11)),
        new DoubleTile(position = game.at(13, 12)),
        new DoubleTile(position = game.at(13, 13)),
        new DoubleTile(position = game.at(14, 13))

    ],
    lockTiles = [new LockTile(position = game.at(16, 11))],
    keyTile = new KeyTile(position = game.at(1, 5)),
    initialTile = new Tile(position = game.at(5, 2)),
    bonusTile = new BonusTile(position = game.at(9, 9)),
    goalTile = new GoalTile(position = game.at(17, 10)),
    moveableTile = new MoveableTile(initialPos = game.at(5, 6)),
    plateTile = new PlateTile(position = game.at(1, 5)),
    doesntRequirePlate = false,
    plateIsPressed = false,
    nextLevel = level16,

    //Unused
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1))
)

