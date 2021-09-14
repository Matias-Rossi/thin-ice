
import wollok.game.*
import level.*
import tile.*
import level19.* 
//temp

const level18 = new Level(
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
            start = new Coordinates(x = 1, y = 11),
            end = new Coordinates(x = 4, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 10),
            end = new Coordinates(x = 4, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 8),
            end = new Coordinates(x = 5, y = 8),
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
            start = new Coordinates(x = 1, y = 5),
            end = new Coordinates(x = 1, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 5),
            end = new Coordinates(x = 2, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 6),
            end = new Coordinates(x = 6, y = 10),
            orientation = "y"
        ),
        

        //single
        new SolidTile(position = game.at(1, 13)),
        new SolidTile(position = game.at(2, 2)),
        new SolidTile(position = game.at(2, 3)),
        new SolidTile(position = game.at(3, 2)),
        new SolidTile(position = game.at(3, 3)),
        new SolidTile(position = game.at(3, 5)),
        new SolidTile(position = game.at(3, 6)),
        new SolidTile(position = game.at(4, 5)),
        new SolidTile(position = game.at(4, 6)),
        new SolidTile(position = game.at(6, 1)),
        new SolidTile(position = game.at(6, 3)),
        new SolidTile(position = game.at(7, 1)),
        new SolidTile(position = game.at(10, 1)),
        new SolidTile(position = game.at(10, 4)),
        new SolidTile(position = game.at(10, 5)),
        new SolidTile(position = game.at(11, 1)),
        new SolidTile(position = game.at(14, 1)),
        new SolidTile(position = game.at(15, 7)),
        new SolidTile(position = game.at(15, 8)),
        new SolidTile(position = game.at(16, 2)),
        new SolidTile(position = game.at(16, 5)),
        new SolidTile(position = game.at(16, 10))
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 2, y = 13),
            end = new Coordinates(x = 17, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 12),
            end = new Coordinates(x = 14, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 5, y = 11),
            end = new Coordinates(x = 7, y = 11),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 9),
            end = new Coordinates(x = 5, y = 9),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 1, y = 4),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 2),
            end = new Coordinates(x = 7, y = 9),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 1),
            end = new Coordinates(x = 8, y = 8),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 1),
            end = new Coordinates(x = 9, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 6),
            end = new Coordinates(x = 10, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 11, y = 2),
            end = new Coordinates(x = 11, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 1),
            end = new Coordinates(x = 12, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 1),
            end = new Coordinates(x = 13, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 2),
            end = new Coordinates(x = 14, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 1),
            end = new Coordinates(x = 15, y = 6),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 15, y = 9),
            end = new Coordinates(x = 15, y = 11),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 16, y = 6),
            end = new Coordinates(x = 16, y = 9),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 17, y = 1),
            end = new Coordinates(x = 17, y = 12),
            orientation = "y"
        ),

        //single
        new IceTile(position = game.at(2, 1)),
        new IceTile(position = game.at(2, 4)),
        new IceTile(position = game.at(3, 1)),
        new IceTile(position = game.at(3, 4)),
        new IceTile(position = game.at(4, 7)),
        new IceTile(position = game.at(5, 1)),
        new IceTile(position = game.at(5, 3)),
        new IceTile(position = game.at(5, 4)),
        new IceTile(position = game.at(5, 7)),
        new IceTile(position = game.at(5, 10)),
        new IceTile(position = game.at(6, 2)),
        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(10, 2)),
        new IceTile(position = game.at(10, 3)),
        new IceTile(position = game.at(16, 1)),
        new IceTile(position = game.at(16, 3)),
        new IceTile(position = game.at(16, 4)),
        new IceTile(position = game.at(16, 11)),
        new IceTile(position = game.at(16, 12))
        

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(4, 1)),
        new DoubleTile(position = game.at(4, 2)),
        new DoubleTile(position = game.at(4, 3)),
        new DoubleTile(position = game.at(4, 4)),
        new DoubleTile(position = game.at(5, 2)),
        new DoubleTile(position = game.at(5, 5)),
        new DoubleTile(position = game.at(6, 5)),
        new DoubleTile(position = game.at(8, 9)),
        new DoubleTile(position = game.at(8, 10)),
        new DoubleTile(position = game.at(8, 11))

    ],
    lockTiles = [new LockTile(position = game.at(5, 6))],
    keyTile = new KeyTile(position = game.at(2, 13)),
    initialTile = new Tile(position = game.at(3, 9)),
    bonusTile = new BonusTile(position = game.at(17, 13)),
    goalTile = new GoalTile(position = game.at(3, 7)),
    moveableTile = new MoveableTile(initialPos = game.at(16, 4)),
    plateTile = new PlateTile(position = game.at(1, 12)),
    doesntRequirePlate = false,
    plateIsPressed = false,
    portalTileA = new PortalTile(position = game.at(7, 10), teleportTo = game.at(15, 12)),
    portalTileB = new PortalTile(position = game.at(15, 12), teleportTo = game.at(7, 10)),
    nextLevel = level19
)

