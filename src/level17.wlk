
import wollok.game.*
import level.*
import tile.*
import level18.* 
//temp

const level17 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
            //Bordes
            new SolidWall(
                start = new Coordinates(x = 0, y = 14),
                end = new Coordinates(x = 18, y = 14),
                orientation = "x"
            ),
            new SolidWall(
                start = new Coordinates(x = 0, y = 0),
                end = new Coordinates(x = 18, y = 0),
                orientation = "x"
            ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 11),
            end = new Coordinates(x = 11, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 10),
            end = new Coordinates(x = 4, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 7),
            end = new Coordinates(x = 5, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 4),
            end = new Coordinates(x = 7, y = 4),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 4),
            end = new Coordinates(x = 16, y = 4),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 2),
            end = new Coordinates(x = 16, y = 2),
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
            start = new Coordinates(x = 2, y = 4),
            end = new Coordinates(x = 2, y = 7),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 7),
            end = new Coordinates(x = 6, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 4),
            end = new Coordinates(x = 9, y = 10),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 5),
            end = new Coordinates(x = 14, y = 7),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 8),
            end = new Coordinates(x = 16, y = 11),
            orientation = "y"
        ),

        //single
        new SolidTile(position = game.at(2, 9)),
        new SolidTile(position = game.at(3, 3)),
        new SolidTile(position = game.at(4, 9)),
        new SolidTile(position = game.at(7, 13)),
        new SolidTile(position = game.at(9, 13)),
        new SolidTile(position = game.at(10, 7)),
        new SolidTile(position = game.at(10, 9)),
        new SolidTile(position = game.at(11, 12)),
        new SolidTile(position = game.at(13, 10)),
        new SolidTile(position = game.at(13, 5)),
        new SolidTile(position = game.at(13, 6)),
        new SolidTile(position = game.at(13, 12)),
        new SolidTile(position = game.at(13, 13)),
        new SolidTile(position = game.at(15, 7)),
        new SolidTile(position = game.at(15, 8)),
        new SolidTile(position = game.at(15, 13)),
        new SolidTile(position = game.at(16, 3))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 10, y = 13),
            end = new Coordinates(x = 12, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 8),
            end = new Coordinates(x = 4, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 8),
            end = new Coordinates(x = 14, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 6),
            end = new Coordinates(x = 6, y = 6),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 5),
            end = new Coordinates(x = 6, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 5),
            end = new Coordinates(x = 12, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 3),
            end = new Coordinates(x = 15, y = 3),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 2),
            end = new Coordinates(x = 13, y = 2),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 1),
            end = new Coordinates(x = 9, y = 1),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 1),
            end = new Coordinates(x = 17, y = 1),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 1, y = 6),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 9),
            end = new Coordinates(x = 1, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 11),
            end = new Coordinates(x = 2, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 11),
            end = new Coordinates(x = 3, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 11),
            end = new Coordinates(x = 4, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 5, y = 8),
            end = new Coordinates(x = 5, y = 13),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 5),
            end = new Coordinates(x = 7, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 4),
            end = new Coordinates(x = 8, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 9),
            end = new Coordinates(x = 15, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 17, y = 2),
            end = new Coordinates(x = 17, y = 13),
            orientation = "y"
        ),

        //single
        new IceTile(position = game.at(9, 12)),
        new IceTile(position = game.at(10, 6)),
        new IceTile(position = game.at(10, 8)),
        new IceTile(position = game.at(10, 10)),
        new IceTile(position = game.at(10, 12)),
        new IceTile(position = game.at(11, 6)),
        new IceTile(position = game.at(11, 7)),
        new IceTile(position = game.at(11, 9)),
        new IceTile(position = game.at(12, 10)),
        new IceTile(position = game.at(12, 12)),
        new IceTile(position = game.at(13, 7)),
        new IceTile(position = game.at(13, 9)),
        new IceTile(position = game.at(13, 11)),
        new IceTile(position = game.at(14, 10)),
        new IceTile(position = game.at(14, 11)),
        new IceTile(position = game.at(14, 13)),
        new IceTile(position = game.at(15, 5)),
        new IceTile(position = game.at(15, 6)),
        new IceTile(position = game.at(16, 5)),
        new IceTile(position = game.at(16, 7)),
        new IceTile(position = game.at(16, 12)),
        new IceTile(position = game.at(16, 13))
        

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(1, 8)),
        new DoubleTile(position = game.at(11, 8)),
        new DoubleTile(position = game.at(11, 10)),
        new DoubleTile(position = game.at(12, 6)),
        new DoubleTile(position = game.at(12, 7)),
        new DoubleTile(position = game.at(12, 9)),
        new DoubleTile(position = game.at(12, 11)),
        new DoubleTile(position = game.at(14, 9)),
        new DoubleTile(position = game.at(14, 12)),
        new DoubleTile(position = game.at(16, 6))

    ],
    lockTiles = [new LockTile(position = game.at(1, 7))],
    keyTile = new KeyTile(position = game.at(14, 13)),
    initialTile = new Tile(position = game.at(15, 3)),
    bonusTile = new BonusTile(position = game.at(7, 9)),
    goalTile = new GoalTile(position = game.at(3, 9)),
    moveableTile = new MoveableTile(initialPos = game.at(5, 3)),
    plateTile = new PlateTile(position = game.at(8, 13)),
    doesntRequirePlate = false,
    plateIsPressed = false,
    portalTileA = new PortalTile(position = game.at(10, 1), teleportTo = game.at(2, 3)),
    portalTileB = new PortalTile(position = game.at(2, 3), teleportTo = game.at(10, 1)),
    nextLevel = level18
)

