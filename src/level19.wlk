
import wollok.game.*
import level.*
import tile.*
import level1.* 
//temp

const level19 = new Level(
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
            start = new Coordinates(x = 6, y = 12),
            end = new Coordinates(x = 8, y = 12),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 11),
            end = new Coordinates(x = 3, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 1),
            end = new Coordinates(x = 9, y = 1),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 1),
            end = new Coordinates(x = 17, y = 1),
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
            start = new Coordinates(x = 2, y = 5),
            end = new Coordinates(x = 2, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 2),
            end = new Coordinates(x = 5, y = 4),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 2),
            end = new Coordinates(x = 9, y = 5),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 4),
            end = new Coordinates(x = 13, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 3),
            end = new Coordinates(x = 14, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 3),
            end = new Coordinates(x = 15, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 2),
            end = new Coordinates(x = 16, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 17, y = 2),
            end = new Coordinates(x = 17, y = 13),
            orientation = "y"
        ),
        

        //single
        new SolidTile(position = game.at(2, 3)),
        new SolidTile(position = game.at(2, 13)),
        new SolidTile(position = game.at(3, 6)),
        new SolidTile(position = game.at(3, 8)),
        new SolidTile(position = game.at(4, 3)),
        new SolidTile(position = game.at(4, 6)),
        new SolidTile(position = game.at(4, 8)),
        new SolidTile(position = game.at(6, 11)),
        new SolidTile(position = game.at(8, 11)),
        new SolidTile(position = game.at(11, 5))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 3, y = 13),
            end = new Coordinates(x = 12, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 12),
            end = new Coordinates(x = 5, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 10),
            end = new Coordinates(x = 4, y = 10),
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
            end = new Coordinates(x = 1, y = 3),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 5, y = 5),
            end = new Coordinates(x = 5, y = 10),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 6, y = 2),
            end = new Coordinates(x = 6, y = 10),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 4),
            end = new Coordinates(x = 7, y = 10),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 2),
            end = new Coordinates(x = 8, y = 10),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 6),
            end = new Coordinates(x = 9, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 1),
            end = new Coordinates(x = 10, y = 5),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 8),
            end = new Coordinates(x = 10, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 1),
            end = new Coordinates(x = 11, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 6),
            end = new Coordinates(x = 11, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 2),
            end = new Coordinates(x = 12, y = 12),
            orientation = "y"
        ),

        //single
        new IceTile(position = game.at(1, 5)),
        new IceTile(position = game.at(1, 6)),
        new IceTile(position = game.at(1, 8)),
        new IceTile(position = game.at(1, 9)),
        new IceTile(position = game.at(2, 2)),
        new IceTile(position = game.at(2, 4)),
        new IceTile(position = game.at(3, 3)),
        new IceTile(position = game.at(3, 5)),
        new IceTile(position = game.at(3, 7)),
        new IceTile(position = game.at(3, 9)),
        new IceTile(position = game.at(4, 2)),
        new IceTile(position = game.at(4, 7)),
        new IceTile(position = game.at(4, 9)),
        new IceTile(position = game.at(4, 11)),
        new IceTile(position = game.at(5, 11)),
        new IceTile(position = game.at(7, 2)),
        new IceTile(position = game.at(13, 3)),
        new IceTile(position = game.at(15, 2))

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(1, 4)),
        new DoubleTile(position = game.at(3, 2)),
        new DoubleTile(position = game.at(3, 4)),
        new DoubleTile(position = game.at(4, 4)),
        new DoubleTile(position = game.at(4, 5)),
        new DoubleTile(position = game.at(10, 6)),
        new DoubleTile(position = game.at(13, 2)),
        new DoubleTile(position = game.at(14, 2))

    ],
    lockTiles = [new LockTile(position = game.at(1, 7))],
    keyTile = new KeyTile(position = game.at(15, 2)),
    initialTile = new Tile(position = game.at(3, 7)),
    bonusTile = new BonusTile(position = game.at(-1, -1)),
    goalTile = new GoalTile(position = game.at(1, 13)),
    moveableTile = new MoveableTile(initialPos = game.at(12, 7)),
    plateTile = new PlateTile(position = game.at(7, 11)),
    doesntRequirePlate = false,
    plateIsPressed = false,
    portalTileA = new PortalTile(position = game.at(7, 3), teleportTo = game.at(10, 7)),
    portalTileB = new PortalTile(position = game.at(10, 7), teleportTo = game.at(7, 3)),
    nextLevel = level1
)

