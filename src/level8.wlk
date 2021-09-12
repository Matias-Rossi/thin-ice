import wollok.game.*
import level.*
import tile.*
import level9.* 
//temp

const level8 = new Level(
    solidTiles = [
        //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 0, y = 11),
            end = new Coordinates(x = 4, y = 11),
            orientation = "x"
        ),new SolidWall(
            start = new Coordinates(x = 8, y = 11),
            end = new Coordinates(x = 12, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 10),
            end = new Coordinates(x = 8, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 8),
            end = new Coordinates(x = 15, y = 8),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 7),
            end = new Coordinates(x = 2, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 7),
            end = new Coordinates(x = 13, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 6),
            end = new Coordinates(x = 13, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 2),
            end = new Coordinates(x = 13, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 0),
            end = new Coordinates(x = 16, y = 0),
            orientation = "x"
        ),
        //Vertical walls
        new SolidWall(
            start = new Coordinates(x = 0, y = 7),
            end = new Coordinates(x = 0, y = 11),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 1, y = 1),
            end = new Coordinates(x = 1, y = 6),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 3),
            end = new Coordinates(x = 12, y = 5),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 15, y = 5),
            end = new Coordinates(x = 15, y = 7),
            orientation = "y"
        ),
        new SolidWall(
            start = new Coordinates(x = 16, y = 0),
            end = new Coordinates(x = 16, y = 5),
            orientation = "y"
        ),

        //Other blocks
        new SolidTile(position = game.at(2, 1)),
        new SolidTile(position = game.at(2, 6)),
        new SolidTile(position = game.at(2, 9)),

        new SolidTile(position = game.at(4, 6)),
        new SolidTile(position = game.at(4, 7)),
        new SolidTile(position = game.at(4, 9)),

        new SolidTile(position = game.at(5, 4)),
        new SolidTile(position = game.at(5, 6)),
        new SolidTile(position = game.at(5, 7)),
        new SolidTile(position = game.at(5, 9)),

        new SolidTile(position = game.at(7, 3)),
        new SolidTile(position = game.at(7, 4)),
        new SolidTile(position = game.at(7, 6)),
        new SolidTile(position = game.at(7, 7)),
        new SolidTile(position = game.at(7, 9)),

        new SolidTile(position = game.at(8, 3)),
        new SolidTile(position = game.at(8, 4)),
        new SolidTile(position = game.at(8, 6)),
        new SolidTile(position = game.at(8, 7)),
        new SolidTile(position = game.at(8, 9)),

        new SolidTile(position = game.at(10, 4)),
        new SolidTile(position = game.at(10, 9)),

        new SolidTile(position = game.at(12, 9)),
        new SolidTile(position = game.at(12, 10)),

        new SolidTile(position = game.at(13, 3))
        
        
    ],
    iceTiles = [
        //horizontal
        new IceWall(
            start = new Coordinates(x = 1, y = 10),
            end = new Coordinates(x = 3, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 10),
            end = new Coordinates(x = 11, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 5),
            end = new Coordinates(x = 5, y = 5),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 4),
            end = new Coordinates(x = 4, y = 4),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 13, y = 4),
            end = new Coordinates(x = 15, y = 4),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 2, y = 3),
            end = new Coordinates(x = 6, y = 3),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 9, y = 3),
            end = new Coordinates(x = 11, y = 3),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 3, y = 1),
            end = new Coordinates(x = 15, y = 1),
            orientation = "x"
        ),
        //Single
        new IceTile(position = game.at(1, 8)),
        new IceTile(position = game.at(1, 9)),
        new IceTile(position = game.at(2, 2)),
        new IceTile(position = game.at(2, 8)),
        new IceTile(position = game.at(3, 2)),
        new IceTile(position = game.at(3, 6)),
        new IceTile(position = game.at(3, 7)),
        new IceTile(position = game.at(3, 9)),
        new IceTile(position = game.at(4, 8)),
        new IceTile(position = game.at(5, 8)),
        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(6, 6)),
        new IceTile(position = game.at(6, 7)),
        new IceTile(position = game.at(6, 9)),
        new IceTile(position = game.at(7, 5)),
        new IceTile(position = game.at(7, 8)),
        new IceTile(position = game.at(8, 5)),
        new IceTile(position = game.at(8, 8)),
        new IceTile(position = game.at(9, 4)),
        new IceTile(position = game.at(9, 6)),
        new IceTile(position = game.at(9, 7)),
        new IceTile(position = game.at(9, 9)),
        new IceTile(position = game.at(10, 5)),
        new IceTile(position = game.at(10, 8)),
        new IceTile(position = game.at(11, 4)),
        new IceTile(position = game.at(11, 5)),
        new IceTile(position = game.at(11, 8)),
        new IceTile(position = game.at(11, 9)),
        new IceTile(position = game.at(13, 5)),
        new IceTile(position = game.at(14, 2)),
        new IceTile(position = game.at(14, 3)),
        new IceTile(position = game.at(14, 5)),
        new IceTile(position = game.at(14, 6)),
        new IceTile(position = game.at(15, 2)),
        new IceTile(position = game.at(15, 3))
    ],
    doubleTiles = [ 
        new DoubleTile(position = game.at(3, 8)),
        new DoubleTile(position = game.at(6, 5)),
        new DoubleTile(position = game.at(6, 8)),
        new DoubleTile(position = game.at(9, 5)),
        new DoubleTile(position = game.at(9, 8))
    ],
    initialTile = new Tile(position = game.at(6, 9)),
    bonusTile = new BonusTile(position = game.at(2, 4)),
    goalTile = new GoalTile(position = game.at(14, 7)),
    nextLevel = level9,

    lockTiles = [],
    keyTile = new KeyTile(position = game.at(-1, -1))
)

