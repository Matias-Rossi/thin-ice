import wollok.game.*
import level.*
import tile.*
import level12.* 
//temp

const level11 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 14, y = 14),
            end = new Coordinates(x = 16, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 12),
            end = new Coordinates(x = 14, y = 12),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 12),
            end = new Coordinates(x = 18, y = 12),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 11),
            end = new Coordinates(x = 12, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 9),
            end = new Coordinates(x = 9, y = 9),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 8),
            end = new Coordinates(x = 14, y = 8),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 8),
            end = new Coordinates(x = 18, y = 8),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 7),
            end = new Coordinates(x = 3, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 7),
            end = new Coordinates(x = 18, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 6),
            end = new Coordinates(x = 7, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 6),
            end = new Coordinates(x = 11, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 6),
            end = new Coordinates(x = 18, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 2),
            end = new Coordinates(x = 3, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 2),
            end = new Coordinates(x = 16, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 0),
            end = new Coordinates(x = 18, y = 0),
            orientation = "x"
        ),

        //vertical
        new SolidWall(
            start = new Coordinates(x = 1, y = 3),
            end = new Coordinates(x = 1, y = 6),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 8),
            end = new Coordinates(x = 2, y = 10),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 7, y = 3),
            end = new Coordinates(x = 7, y = 5),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 1),
            end = new Coordinates(x = 9, y = 4),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 3),
            end = new Coordinates(x = 13, y = 6),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 18, y = 1),
            end = new Coordinates(x = 18, y = 5),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 18, y = 9),
            end = new Coordinates(x = 18, y = 11),
            orientation = "y"
        ),
        
        //single
        new SolidTile(position = game.at(3, 1)),
        new SolidTile(position = game.at(3, 4)),
        new SolidTile(position = game.at(3, 5)),
        new SolidTile(position = game.at(5, 3)),
        new SolidTile(position = game.at(5, 4)),
        new SolidTile(position = game.at(6, 1)),
        new SolidTile(position = game.at(6, 7)),
        new SolidTile(position = game.at(9, 7)),
        new SolidTile(position = game.at(9, 8)),
        new SolidTile(position = game.at(11, 10)),
        new SolidTile(position = game.at(12, 9)),
        new SolidTile(position = game.at(12, 10)),
        new SolidTile(position = game.at(14, 6)),
        new SolidTile(position = game.at(14, 7)),
        new SolidTile(position = game.at(14, 10)),
        new SolidTile(position = game.at(14, 13)),
        new SolidTile(position = game.at(15, 4)),
        new SolidTile(position = game.at(16, 3)),
        new SolidTile(position = game.at(16, 4)),
        new SolidTile(position = game.at(16, 10)),
        new SolidTile(position = game.at(16, 13))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 3, y = 10),
            end = new Coordinates(x = 10, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 9),
            end = new Coordinates(x = 5, y = 9),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 8),
            end = new Coordinates(x = 6, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 5),
            end = new Coordinates(x = 6, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 5),
            end = new Coordinates(x = 12, y = 5),
            orientation = "x"
        ),
        

        //Vertical
        new IceWall(
            start = new Coordinates(x = 2, y = 3),
            end = new Coordinates(x = 2, y = 6),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 1),
            end = new Coordinates(x = 8, y = 3),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 6),
            end = new Coordinates(x = 8, y = 8),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 1),
            end = new Coordinates(x = 10, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 7),
            end = new Coordinates(x = 10, y = 9),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 1),
            end = new Coordinates(x = 11, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 7),
            end = new Coordinates(x = 11, y = 9),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 2),
            end = new Coordinates(x = 12, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 3),
            end = new Coordinates(x = 14, y = 5),
            orientation = "y"
        ),
        
        

        //single
        new IceTile(position = game.at(3, 3)),
        new IceTile(position = game.at(3, 6)),
        new IceTile(position = game.at(4, 1)),
        new IceTile(position = game.at(4, 2)),
        new IceTile(position = game.at(4, 4)),
        new IceTile(position = game.at(5, 1)),
        new IceTile(position = game.at(5, 2)),
        new IceTile(position = game.at(5, 7)),
        new IceTile(position = game.at(6, 3)),
        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(7, 1)),
        new IceTile(position = game.at(7, 7)),
        new IceTile(position = game.at(12, 6)),
        new IceTile(position = game.at(13, 7)),
        new IceTile(position = game.at(13, 9)),
        new IceTile(position = game.at(14, 9)),
        new IceTile(position = game.at(14, 11)),
        new IceTile(position = game.at(15, 7)),
        new IceTile(position = game.at(15, 8)),
        new IceTile(position = game.at(15, 10)),
        new IceTile(position = game.at(15, 12)),
        new IceTile(position = game.at(16, 9)),
        new IceTile(position = game.at(16, 11)),
        new IceTile(position = game.at(17, 9)),
        new IceTile(position = game.at(15, 3))
        

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(4, 3)),
        new DoubleTile(position = game.at(4, 6)),
        new DoubleTile(position = game.at(4, 7)),
        new DoubleTile(position = game.at(6, 2)),
        new DoubleTile(position = game.at(7, 2)),
        new DoubleTile(position = game.at(7, 8)),
        new DoubleTile(position = game.at(8, 4)),
        new DoubleTile(position = game.at(8, 5)),
        new DoubleTile(position = game.at(12, 1)),
        new DoubleTile(position = game.at(12, 7)),
        new DoubleTile(position = game.at(13, 10)),
        new DoubleTile(position = game.at(13, 11)),
        new DoubleTile(position = game.at(15, 9)),
        new DoubleTile(position = game.at(15, 11)),
        new DoubleTile(position = game.at(17, 10)),
        new DoubleTile(position = game.at(17, 11)),
        new DoubleTile(position = game.at(13, 1)),
        new DoubleTile(position = game.at(14, 1)),
        new DoubleTile(position = game.at(15, 1)),
        new DoubleTile(position = game.at(16, 1)),
        new DoubleTile(position = game.at(17, 1)),
        new DoubleTile(position = game.at(17, 2)),
        new DoubleTile(position = game.at(17, 3)),
        new DoubleTile(position = game.at(17, 4)),
        new DoubleTile(position = game.at(17, 5)),
        new DoubleTile(position = game.at(16, 5)),
        new DoubleTile(position = game.at(15, 5))
        

    ],
    lockTiles = [new LockTile(position = game.at(15, 6))],
    keyTile = new KeyTile(position = game.at(6, 5)),
    initialTile = new Tile(position = game.at(15, 3)),
    bonusTile = new BonusTile(position = game.at(8, 1)),
    goalTile = new GoalTile(position = game.at(15, 13)),
    nextLevel = level12,

    //unused
    moveableTile = new MoveableTile(initialPos = game.at(-1, -1)),
    plateTile = new PlateTile(position = game.at(-1, -1)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = true,
    plateIsPressed = true
)

