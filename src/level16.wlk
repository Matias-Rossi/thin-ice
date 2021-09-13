import wollok.game.*
import level.*
import tile.*
import level17.* 
//temp

const level16 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 0, y = 14),
            end = new Coordinates(x = 18, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 11),
            end = new Coordinates(x = 17, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 5),
            end = new Coordinates(x = 17, y = 5),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 2),
            end = new Coordinates(x = 16, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 0),
            end = new Coordinates(x = 18, y = 0),
            orientation = "x"
        ),


        //vertical
            // Bordes
            new SolidWall(
                start = new Coordinates(x = 0, y = 1),
                end = new Coordinates(x = 0, y = 13),
                orientation = "y"
            ),
            new SolidWall(
                start = new Coordinates(x = 18, y = 1),
                end = new Coordinates(x = 18, y = 13),
                orientation = "y"
            ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 6),
            end = new Coordinates(x = 1, y = 10),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 9),
            end = new Coordinates(x = 4, y = 11),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 9),
            end = new Coordinates(x = 5, y = 11),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 9),
            end = new Coordinates(x = 10, y = 11),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 11, y = 9),
            end = new Coordinates(x = 11, y = 11),
            orientation = "y"
        ),

        //single
        new SolidTile(position = game.at(2, 6)),
        new SolidTile(position = game.at(2, 7)),
        new SolidTile(position = game.at(2, 10)),
        new SolidTile(position = game.at(2, 12)),
        new SolidTile(position = game.at(3, 1)),
        new SolidTile(position = game.at(4, 3)),
        new SolidTile(position = game.at(6, 5)),
        new SolidTile(position = game.at(6, 7)),
        new SolidTile(position = game.at(6, 9)),
        new SolidTile(position = game.at(6, 10)),
        new SolidTile(position = game.at(7, 13)),
        new SolidTile(position = game.at(8, 1)),
        new SolidTile(position = game.at(8, 2)),
        new SolidTile(position = game.at(8, 5)),
        new SolidTile(position = game.at(8, 7)),
        new SolidTile(position = game.at(8, 9)),
        new SolidTile(position = game.at(8, 13)),
        new SolidTile(position = game.at(10, 1)),
        new SolidTile(position = game.at(10, 7)),
        new SolidTile(position = game.at(12, 3)),
        new SolidTile(position = game.at(12, 4)),
        new SolidTile(position = game.at(12, 10)),
        new SolidTile(position = game.at(12, 11)),
        new SolidTile(position = game.at(13, 13)),
        new SolidTile(position = game.at(14, 3)),
        new SolidTile(position = game.at(16, 3)),
        new SolidTile(position = game.at(17, 8)),
        new SolidTile(position = game.at(17, 9))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 4, y = 13),
            end = new Coordinates(x = 6, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 13),
            end = new Coordinates(x = 12, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 13),
            end = new Coordinates(x = 17, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 12),
            end = new Coordinates(x = 13, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 12),
            end = new Coordinates(x = 17, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 6, y = 11),
            end = new Coordinates(x = 9, y = 11),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 10),
            end = new Coordinates(x = 9, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 10),
            end = new Coordinates(x = 17, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 8),
            end = new Coordinates(x = 6, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 8),
            end = new Coordinates(x = 16, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 7),
            end = new Coordinates(x = 17, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 7),
            end = new Coordinates(x = 17, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 6),
            end = new Coordinates(x = 17, y = 6),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 4),
            end = new Coordinates(x = 16, y = 4),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 2),
            end = new Coordinates(x = 7, y = 2),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 1),
            end = new Coordinates(x = 7, y = 1),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 1, y = 5),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 11),
            end = new Coordinates(x = 1, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 1),
            end = new Coordinates(x = 2, y = 5),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 5),
            end = new Coordinates(x = 3, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 4),
            end = new Coordinates(x = 4, y = 7),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 2),
            end = new Coordinates(x = 10, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 1),
            end = new Coordinates(x = 11, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 9),
            end = new Coordinates(x = 13, y = 11),
            orientation = "y"
        ),


        //single
        new IceTile(position = game.at(2, 8)),
        new IceTile(position = game.at(2, 9)),
        new IceTile(position = game.at(2, 11)),
        new IceTile(position = game.at(2, 13)),
        new IceTile(position = game.at(3, 3)),
        new IceTile(position = game.at(5, 3)),
        new IceTile(position = game.at(5, 4)),
        new IceTile(position = game.at(5, 5)),
        new IceTile(position = game.at(5, 7)),
        new IceTile(position = game.at(6, 3)),
        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(6, 6)),
        new IceTile(position = game.at(7, 5)),
        new IceTile(position = game.at(7, 7)),
        new IceTile(position = game.at(7, 9)),
        new IceTile(position = game.at(8, 3)),
        new IceTile(position = game.at(8, 4)),
        new IceTile(position = game.at(8, 6)),
        new IceTile(position = game.at(8, 8)),
        new IceTile(position = game.at(9, 2)),
        new IceTile(position = game.at(9, 5)),
        new IceTile(position = game.at(9, 7)),
        new IceTile(position = game.at(9, 9)),
        new IceTile(position = game.at(12, 1)),
        new IceTile(position = game.at(12, 2)),
        new IceTile(position = game.at(12, 9)),
        new IceTile(position = game.at(14, 9)),
        new IceTile(position = game.at(14, 11)),
        new IceTile(position = game.at(15, 9)),
        new IceTile(position = game.at(16, 9))
        

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(3, 4)),
        new DoubleTile(position = game.at(3, 13)),
        new DoubleTile(position = game.at(5, 6)),
        new DoubleTile(position = game.at(7, 3)),
        new DoubleTile(position = game.at(7, 4)),
        new DoubleTile(position = game.at(7, 6)),
        new DoubleTile(position = game.at(7, 8)),
        new DoubleTile(position = game.at(9, 3)),
        new DoubleTile(position = game.at(9, 4)),
        new DoubleTile(position = game.at(9, 6)),
        new DoubleTile(position = game.at(9, 8)),
        new DoubleTile(position = game.at(13, 1)),
        new DoubleTile(position = game.at(13, 2)),
        new DoubleTile(position = game.at(14, 1)),
        new DoubleTile(position = game.at(14, 12)),
        new DoubleTile(position = game.at(15, 1)),
        new DoubleTile(position = game.at(16, 1)),
        new DoubleTile(position = game.at(17, 1)),
        new DoubleTile(position = game.at(17, 2)),
        new DoubleTile(position = game.at(17, 3)),
        new DoubleTile(position = game.at(17, 4))
    

    ],
    lockTiles = [new LockTile(position = game.at(13, 3))],
    keyTile = new KeyTile(position = game.at(17, 1)),
    initialTile = new Tile(position = game.at(17, 10)),
    bonusTile = new BonusTile(position = game.at(5, 5)),
    goalTile = new GoalTile(position = game.at(15, 3)),
    moveableTile = new MoveableTile(initialPos = game.at(14, 9)),
    plateTile = new PlateTile(position = game.at(9, 1)),
    doesntRequirePlate = false,
    plateIsPressed = false,
    nextLevel = level17,

    //Unused
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1))
)

