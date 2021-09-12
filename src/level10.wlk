import wollok.game.*
import level.*
import tile.*
import level11.* 
//temp

const level10 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
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
            start = new Coordinates(x = 7, y = 10),
            end = new Coordinates(x = 12, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 7, y = 5),
            end = new Coordinates(x = 9, y = 5),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 5),
            end = new Coordinates(x = 16, y = 5),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 3),
            end = new Coordinates(x = 4, y = 3),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 7, y = 3),
            end = new Coordinates(x = 9, y = 3),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 2),
            end = new Coordinates(x = 16, y = 2),
            orientation = "x"
        ),
        //vertical
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
        //single
        new SolidTile(position = game.at(7, 9)),
        new SolidTile(position = game.at(8, 9)),
        new SolidTile(position = game.at(10, 9)),
        new SolidTile(position = game.at(11, 9)),
        new SolidTile(position = game.at(7, 8)),
        new SolidTile(position = game.at(8, 8)),
        new SolidTile(position = game.at(10, 8)),
        new SolidTile(position = game.at(11, 8)),
        new SolidTile(position = game.at(16, 4)),
        new SolidTile(position = game.at(14, 3)),
        new SolidTile(position = game.at(16, 3)),
        new SolidTile(position = game.at(2, 2)),
        new SolidTile(position = game.at(3, 2))
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 1, y = 13),
            end = new Coordinates(x = 17, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 12),
            end = new Coordinates(x = 3, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 12, y = 12),
            end = new Coordinates(x = 15, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 11),
            end = new Coordinates(x = 15, y = 11),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 10),
            end = new Coordinates(x = 6, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 10),
            end = new Coordinates(x = 15, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 9),
            end = new Coordinates(x = 6, y = 9),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 8),
            end = new Coordinates(x = 6, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 8),
            end = new Coordinates(x = 16, y = 8),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 7),
            end = new Coordinates(x = 16, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 6),
            end = new Coordinates(x = 16, y = 6),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 5),
            end = new Coordinates(x = 6, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 5),
            end = new Coordinates(x = 13, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 4),
            end = new Coordinates(x = 9, y = 4),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 10, y = 3),
            end = new Coordinates(x = 13, y = 3),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 7, y = 2),
            end = new Coordinates(x = 13, y = 2),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 17, y = 1),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 17, y = 2),
            end = new Coordinates(x = 17, y = 12),
            orientation = "y"
        ),
        

        //single
        new IceTile(position = game.at(1, 2)),
        new IceTile(position = game.at(1, 3)),
        new IceTile(position = game.at(4, 2)),
        new IceTile(position = game.at(5, 3)),
        new IceTile(position = game.at(6, 3)),
        new IceTile(position = game.at(9, 8)),
        new IceTile(position = game.at(9, 9)),
        new IceTile(position = game.at(14, 9)),
        new IceTile(position = game.at(15, 4)),
        new IceTile(position = game.at(15, 9))

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(4, 12)),
        new DoubleTile(position = game.at(5, 12)),
        new DoubleTile(position = game.at(6, 12)),
        new DoubleTile(position = game.at(7, 12)),
        new DoubleTile(position = game.at(8, 12)),
        new DoubleTile(position = game.at(9, 12)),
        new DoubleTile(position = game.at(10, 12)),
        new DoubleTile(position = game.at(11, 12)),

        new DoubleTile(position = game.at(16, 12)),
        new DoubleTile(position = game.at(16, 11)),
        new DoubleTile(position = game.at(16, 10)),
        new DoubleTile(position = game.at(16, 9)),

        new DoubleTile(position = game.at(12, 9)),
        new DoubleTile(position = game.at(13, 9)),
        new DoubleTile(position = game.at(12, 8)),
        new DoubleTile(position = game.at(13, 8)),

        new DoubleTile(position = game.at(10, 4)),
        new DoubleTile(position = game.at(11, 4)),
        new DoubleTile(position = game.at(12, 4)),
        new DoubleTile(position = game.at(13, 4)),

        new DoubleTile(position = game.at(5, 2)),
        new DoubleTile(position = game.at(6, 2))

    ],
    lockTiles = [new LockTile(position = game.at(14, 4))],
    keyTile = new KeyTile(position = game.at(1, 13)),
    initialTile = new Tile(position = game.at(9, 9)),
    bonusTile = new BonusTile(position = game.at(14, 9)),
    goalTile = new GoalTile(position = game.at(15, 3)),
    nextLevel = level11
)

