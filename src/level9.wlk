import wollok.game.*
import level.*
import tile.*
import level10.* 
//temp

const level9 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 1, y = 14),
            end = new Coordinates(x = 16, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 3, y = 12),
            end = new Coordinates(x = 6, y = 12),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 10),
            end = new Coordinates(x = 8, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 10),
            end = new Coordinates(x = 13, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 10),
            end = new Coordinates(x = 17, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 9),
            end = new Coordinates(x = 8, y = 9),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 8),
            end = new Coordinates(x = 10, y = 8),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 7),
            end = new Coordinates(x = 7, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 6),
            end = new Coordinates(x = 11, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 6),
            end = new Coordinates(x = 15, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 9, y = 5),
            end = new Coordinates(x = 11, y = 5),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 3),
            end = new Coordinates(x = 5, y = 3),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 4),
            end = new Coordinates(x = 7, y = 4),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 7, y = 3),
            end = new Coordinates(x = 13, y = 3),
            orientation = "x"
        ),
        //vertical
        new SolidWall(
            start = new Coordinates(x = 1, y = 4),
            end = new Coordinates(x = 1, y = 13),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 7),
            end = new Coordinates(x = 13, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 7),
            end = new Coordinates(x = 15, y = 9),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 17, y = 11),
            end = new Coordinates(x = 17, y = 13),
            orientation = "y"
        ),
        //single
        new SolidTile(position = game.at(3, 5)),
        new SolidTile(position = game.at(10, 9)),
        new SolidTile(position = game.at(13, 4)),
        new SolidTile(position = game.at(13, 5)),
        new SolidTile(position = game.at(16, 13))
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 2, y = 13),
            end = new Coordinates(x = 15, y = 13),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 12),
            end = new Coordinates(x = 14, y = 12),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 11),
            end = new Coordinates(x = 16, y = 11),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 7),
            end = new Coordinates(x = 12, y = 7),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 5),
            end = new Coordinates(x = 8, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 8, y = 4),
            end = new Coordinates(x = 12, y = 4),
            orientation = "x"
        ),

        //Vertical
        new IceWall(
            start = new Coordinates(x = 2, y = 4),
            end = new Coordinates(x = 2, y = 12),
            orientation = "y"
        ),
        new IceWall(
            start = new Coordinates(x = 14, y = 7),
            end = new Coordinates(x = 14, y = 10),
            orientation = "y"
        ),

        //single
        new IceTile(position = game.at(3, 4)),
        new IceTile(position = game.at(3, 6)),
        new IceTile(position = game.at(3, 7)),
        new IceTile(position = game.at(4, 4)),
        new IceTile(position = game.at(4, 6)),
        new IceTile(position = game.at(7, 6)),
        new IceTile(position = game.at(7, 12)),
        new IceTile(position = game.at(8, 6)),
        new IceTile(position = game.at(9, 10)),
        new IceTile(position = game.at(11, 8)),
        new IceTile(position = game.at(11, 9)),
        new IceTile(position = game.at(12, 5)),
        new IceTile(position = game.at(12, 6)),
        new IceTile(position = game.at(12, 8)),
        new IceTile(position = game.at(12, 9)),
        new IceTile(position = game.at(16, 12))

    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(3, 8)),
        new DoubleTile(position = game.at(3, 9)),
        new DoubleTile(position = game.at(3, 10)),
        new DoubleTile(position = game.at(3, 11)),
        new DoubleTile(position = game.at(5, 6)),
        new DoubleTile(position = game.at(6, 6)),
        new DoubleTile(position = game.at(8, 12)),
        new DoubleTile(position = game.at(15, 12))

    ],
    initialTile = new Tile(position = game.at(14, 7)),
    bonusTile = new BonusTile(position = game.at(6, 11)),
    goalTile = new GoalTile(position = game.at(9, 9)),
    nextLevel = level10,

    lockTiles = [],
    keyTile = new KeyTile(position = game.at(-1, -1))
)

