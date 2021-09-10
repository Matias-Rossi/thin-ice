import wollok.game.*
import level.*
import tile.*

/*
object level1 {
    const solidTiles = [
        new Wall(
            start = game.at(1, 5),
            end = game.at(15, 5)
        ),
        new Wall(
            start = game.at(1, 3),
            end = game.at(15, 3)
        ),
        new Tile(
            position = game.at(1, 4)
        ),
        new Tile(
            position = game.at(15, 4)
        )
    ]
    const iceTiles = [
        new Wall(
            start = game.at(2, 4)
            end = game.at(15, 4)
        )
    ]
    const initialTile = game.at(14, 4)
    const bonusTile = game.at(-1,-1)
    const goalTile = game.at(1,4)

    method loadLevel() {

    }
}
*/

const level1 = new Level(
    solidTiles = level1Data.solidTiles(),
    iceTiles = [
        /*
        new Wall(
            start = game.at(2, 4),
            end = game.at(15, 4),
            orientation("x"),
            type iceTile
        )
        */
        new Tile(position = game.at(2, 4)),
        new Tile(position = game.at(2, 5)),
        new Tile(position = game.at(2, 6)),
        new Tile(position = game.at(2, 7)),
        new Tile(position = game.at(2, 8)),
        new Tile(position = game.at(2, 9)),
        new Tile(position = game.at(2, 10)),
        new Tile(position = game.at(2, 11)),
        new Tile(position = game.at(2, 12)),
        new Tile(position = game.at(2, 13)),
        new Tile(position = game.at(2, 14))
    ],
    initialTile = new Tile(position = game.at(14, 4)),
    bonusTile = new Tile(position = game.at(-1,-1)),
    goalTile = new Tile(position = game.at(1,4))
)

object level1Data {
    const property solidTiles = [
        /*
        new Wall(
            start = Coordinates(x = 1, y = 5),
            end = Coordinates(x = 15, y = 5),
            orientation("x"),
            type solidTile
        ),
        new Wall(
            start = Coordinates(x = 1, y = 3),
            end = Coordinates(x = 15, y = 3),
            orientation("x"),
            type solidTile
        ),
        */
        new Tile(position = game.at(1, 5)),
        new Tile(position = game.at(2, 5)),
        new Tile(position = game.at(3, 5)),
        new Tile(position = game.at(4, 5)),
        new Tile(position = game.at(5, 5)),
        new Tile(position = game.at(6, 5)),
        new Tile(position = game.at(7, 5)),
        new Tile(position = game.at(8, 5)),
        new Tile(position = game.at(9, 5)),
        new Tile(position = game.at(10, 5)),
        new Tile(position = game.at(11, 5)),
        new Tile(position = game.at(12, 5)),
        new Tile(position = game.at(13, 5)),
        new Tile(position = game.at(14, 5)),
        new Tile(position = game.at(15, 5)),
        new Tile(position = game.at(1, 3)),
        new Tile(position = game.at(2, 3)),
        new Tile(position = game.at(3, 3)),
        new Tile(position = game.at(4, 3)),
        new Tile(position = game.at(5, 3)),
        new Tile(position = game.at(6, 3)),
        new Tile(position = game.at(7, 3)),
        new Tile(position = game.at(8, 3)),
        new Tile(position = game.at(9, 3)),
        new Tile(position = game.at(10, 3)),
        new Tile(position = game.at(11, 3)),
        new Tile(position = game.at(12, 3)),
        new Tile(position = game.at(13, 3)),
        new Tile(position = game.at(14, 3)),
        new Tile(position = game.at(15, 3)),
        new Tile(
            position = game.at(1, 4)
        ),
        new Tile(
            position = game.at(15, 4)
        )
    ]
}