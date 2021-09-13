import wollok.game.*
import level.*
import tile.*
import level13.* 
//temp

const level12 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 6, y = 14),
            end = new Coordinates(x = 9, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 11, y = 14),
            end = new Coordinates(x = 16, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 13),
            end = new Coordinates(x = 11, y = 13),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 11),
            end = new Coordinates(x = 7, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 11),
            end = new Coordinates(x = 11, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 10),
            end = new Coordinates(x = 5, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 10),
            end = new Coordinates(x = 11, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 9),
            end = new Coordinates(x = 5, y = 9),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 6),
            end = new Coordinates(x = 18, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 2),
            end = new Coordinates(x = 18, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 0),
            end = new Coordinates(x = 5, y = 0),
            orientation = "x"
        ),
        
        
        //vertical
        new SolidWall(
            start = new Coordinates(x = 0, y = 0),
            end = new Coordinates(x = 0, y = 10),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 3),
            end = new Coordinates(x = 4, y = 6),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 1),
            end = new Coordinates(x = 5, y = 4),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 11, y = 7),
            end = new Coordinates(x = 11, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 3),
            end = new Coordinates(x = 14, y = 7),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 11),
            end = new Coordinates(x = 14, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 9),
            end = new Coordinates(x = 16, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 17, y = 7),
            end = new Coordinates(x = 17, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 18, y = 3),
            end = new Coordinates(x = 18, y = 5),
            orientation = "y"
        ),
        
        //single
        new SolidTile(position = game.at(6, 12)),
        new SolidTile(position = game.at(6, 13)),
        new SolidTile(position = game.at(7, 5)),
        new SolidTile(position = game.at(7, 7)),
        new SolidTile(position = game.at(7, 9)),
        new SolidTile(position = game.at(8, 3)),
        new SolidTile(position = game.at(9, 3)),
        new SolidTile(position = game.at(9, 5)),
        new SolidTile(position = game.at(9, 7)),
        new SolidTile(position = game.at(9, 9)),
        new SolidTile(position = game.at(11, 3)),
        new SolidTile(position = game.at(11, 5)),
        new SolidTile(position = game.at(13, 5)),
        new SolidTile(position = game.at(13, 7)),
        new SolidTile(position = game.at(13, 9)),
        new SolidTile(position = game.at(13, 11)),
        new SolidTile(position = game.at(14, 9)),
        new SolidTile(position = game.at(15, 4)),
        new SolidTile(position = game.at(16, 4)),
        new SolidTile(position = game.at(16, 7))
        
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 9, y = 12),
            end = new Coordinates(x = 11, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 8),
            end = new Coordinates(x = 5, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 7),
            end = new Coordinates(x = 6, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 1),
            end = new Coordinates(x = 4, y = 1),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 1, y = 9),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 6, y = 3),
            end = new Coordinates(x = 6, y = 5),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 9),
            end = new Coordinates(x = 12, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 5),
            end = new Coordinates(x = 15, y = 7),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 11),
            end = new Coordinates(x = 15, y = 13),
            orientation = "y"
        ),

        //single
        new IceTile(position = game.at(2, 9)),
        new IceTile(position = game.at(4, 2)),
        new IceTile(position = game.at(5, 5)),
        new IceTile(position = game.at(6, 9)),
        new IceTile(position = game.at(6, 10)),
        new IceTile(position = game.at(7, 3)),
        new IceTile(position = game.at(7, 4)),
        new IceTile(position = game.at(7, 6)),
        new IceTile(position = game.at(7, 8)),
        new IceTile(position = game.at(7, 10)),
        new IceTile(position = game.at(7, 12)),
        new IceTile(position = game.at(7, 13)),
        new IceTile(position = game.at(8, 5)),
        new IceTile(position = game.at(8, 7)),
        new IceTile(position = game.at(8, 9)),
        new IceTile(position = game.at(8, 11)),
        new IceTile(position = game.at(8, 13)),
        new IceTile(position = game.at(9, 4)),
        new IceTile(position = game.at(9, 6)),
        new IceTile(position = game.at(9, 8)),
        new IceTile(position = game.at(10, 3)),
        new IceTile(position = game.at(10, 5)),
        new IceTile(position = game.at(10, 7)),
        new IceTile(position = game.at(10, 9)),
        new IceTile(position = game.at(11, 4)),
        new IceTile(position = game.at(11, 6)),
        new IceTile(position = game.at(12, 3)),
        new IceTile(position = game.at(12, 5)),
        new IceTile(position = game.at(12, 7)),
        new IceTile(position = game.at(12, 13)),
        new IceTile(position = game.at(13, 3)),
        new IceTile(position = game.at(13, 4)),
        new IceTile(position = game.at(13, 6)),
        new IceTile(position = game.at(13, 8)),
        new IceTile(position = game.at(13, 10)),
        new IceTile(position = game.at(13, 12)),
        new IceTile(position = game.at(13, 13)),
        new IceTile(position = game.at(14, 8)),
        new IceTile(position = game.at(14, 10)),
        new IceTile(position = game.at(15, 9)),
        new IceTile(position = game.at(16, 3)),
        new IceTile(position = game.at(16, 5)),
        new IceTile(position = game.at(16, 8)),
        new IceTile(position = game.at(17, 3)),
        new IceTile(position = game.at(17, 5))
        
    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(2, 2)),
        new DoubleTile(position = game.at(2, 3)),
        new DoubleTile(position = game.at(2, 4)),
        new DoubleTile(position = game.at(2, 5)),
        new DoubleTile(position = game.at(2, 6)),
        new DoubleTile(position = game.at(2, 7)),
        new DoubleTile(position = game.at(2, 8)),
        new DoubleTile(position = game.at(3, 2)),
        new DoubleTile(position = game.at(3, 3)),
        new DoubleTile(position = game.at(3, 4)),
        new DoubleTile(position = game.at(3, 5)),
        new DoubleTile(position = game.at(3, 6)),
        new DoubleTile(position = game.at(5, 6)),
        new DoubleTile(position = game.at(6, 6)),
        new DoubleTile(position = game.at(6, 8)),
        new DoubleTile(position = game.at(8, 4)),
        new DoubleTile(position = game.at(8, 6)),
        new DoubleTile(position = game.at(8, 8)),
        new DoubleTile(position = game.at(8, 10)),
        new DoubleTile(position = game.at(8, 12)),
        new DoubleTile(position = game.at(10, 4)),
        new DoubleTile(position = game.at(10, 6)),
        new DoubleTile(position = game.at(10, 8)),
        new DoubleTile(position = game.at(12, 4)),
        new DoubleTile(position = game.at(12, 6)),
        new DoubleTile(position = game.at(12, 8)),
        new DoubleTile(position = game.at(12, 12)),
        new DoubleTile(position = game.at(15, 8)),
        new DoubleTile(position = game.at(15, 10))

    ],
    lockTiles = [new LockTile(position = game.at(17, 4))],
    keyTile = new KeyTile(position = game.at(4, 1)),
    initialTile = new Tile(position = game.at(15, 13)),
    bonusTile = new BonusTile(position = game.at(10, 7)),
    goalTile = new GoalTile(position = game.at(15, 3)),
    nextLevel = level13,

    //unused
    moveableTile = new MoveableTile(initialPos = game.at(-1, -1)),
    plateTile = new PlateTile(position = game.at(-1, -1)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = true,
    plateIsPressed = true
)

