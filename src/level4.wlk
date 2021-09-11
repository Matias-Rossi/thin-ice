import wollok.game.*
import level.*
import tile.*
import level1.* 
//temp

const level4 = new Level(
    solidTiles = [
        new SolidTile(position = game.at(1, 10)),
        new SolidTile(position = game.at(1, 11)),
        new SolidTile(position = game.at(1, 12)),
        new SolidTile(position = game.at(1, 13)),

        new SolidTile(position = game.at(2, 6)),
        new SolidTile(position = game.at(2, 7)),
        new SolidTile(position = game.at(2, 8)),
        new SolidTile(position = game.at(2, 9)),
        new SolidTile(position = game.at(2, 10)),
        new SolidTile(position = game.at(2, 13)),

        new SolidTile(position = game.at(3, 6)),
        new SolidTile(position = game.at(3, 13)),

        new SolidTile(position = game.at(4, 6)),
        new SolidTile(position = game.at(4, 7)),
        new SolidTile(position = game.at(4, 8)),
        new SolidTile(position = game.at(4, 9)),
        new SolidTile(position = game.at(4, 13)),

        new SolidTile(position = game.at(5, 9)),
        new SolidTile(position = game.at(5, 11)),
        new SolidTile(position = game.at(5, 12)),
        new SolidTile(position = game.at(5, 13)),

        new SolidTile(position = game.at(6, 6)),
        new SolidTile(position = game.at(6, 7)),
        new SolidTile(position = game.at(6, 8)),
        new SolidTile(position = game.at(6, 9)),
        new SolidTile(position = game.at(6, 11)),
        new SolidTile(position = game.at(6, 12)),

        new SolidTile(position = game.at(7, 6)),
        new SolidTile(position = game.at(7, 9)),
        new SolidTile(position = game.at(7, 12)),

        new SolidTile(position = game.at(8, 6)),
        new SolidTile(position = game.at(8, 12)),

        new SolidTile(position = game.at(9, 6)),
        new SolidTile(position = game.at(9, 12)),

        new SolidTile(position = game.at(10, 6)),
        new SolidTile(position = game.at(10, 9)),
        new SolidTile(position = game.at(10, 12)),

        new SolidTile(position = game.at(11, 6)),
        new SolidTile(position = game.at(11, 7)),
        new SolidTile(position = game.at(11, 8)),
        new SolidTile(position = game.at(11, 9)),
        new SolidTile(position = game.at(11, 11)),
        new SolidTile(position = game.at(11, 12)),

        new SolidTile(position = game.at(12, 9)),
        new SolidTile(position = game.at(12, 11)),
        new SolidTile(position = game.at(12, 12)),
        new SolidTile(position = game.at(12, 13)),

        new SolidTile(position = game.at(13, 6)),
        new SolidTile(position = game.at(13, 7)),
        new SolidTile(position = game.at(13, 8)),
        new SolidTile(position = game.at(13, 9)),
        new SolidTile(position = game.at(13, 13)),

        new SolidTile(position = game.at(14, 6)),
        new SolidTile(position = game.at(14, 13)),

        new SolidTile(position = game.at(15, 6)),
        new SolidTile(position = game.at(15, 7)),
        new SolidTile(position = game.at(15, 8)),
        new SolidTile(position = game.at(15, 9)),
        new SolidTile(position = game.at(15, 10)),
        new SolidTile(position = game.at(15, 13)),

        new SolidTile(position = game.at(16, 10)),
        new SolidTile(position = game.at(16, 11)),
        new SolidTile(position = game.at(16, 12)),
        new SolidTile(position = game.at(16, 13))

    ],
    iceTiles = [
        new IceTile(position = game.at(2, 11)),
        new IceTile(position = game.at(2, 12)),

        new IceTile(position = game.at(3, 7)),
        new IceTile(position = game.at(3, 8)),
        new IceTile(position = game.at(3, 9)),
        new IceTile(position = game.at(3, 10)),
        new IceTile(position = game.at(3, 11)),
        new IceTile(position = game.at(3, 12)),

        new IceTile(position = game.at(4, 10)),
        new IceTile(position = game.at(4, 11)),
        new IceTile(position = game.at(4, 12)),

        new IceTile(position = game.at(5, 10)),

        new IceTile(position = game.at(6, 10)),

        new IceTile(position = game.at(7, 7)),
        new IceTile(position = game.at(7, 8)),
        new IceTile(position = game.at(7, 10)),
        new IceTile(position = game.at(7, 11)),

        new IceTile(position = game.at(8, 7)),
        new IceTile(position = game.at(8, 8)),
        new IceTile(position = game.at(8, 9)),
        new IceTile(position = game.at(8, 10)),
        new IceTile(position = game.at(8, 11)),

        new IceTile(position = game.at(9, 7)),
        new IceTile(position = game.at(9, 8)),
        new IceTile(position = game.at(9, 9)),
        new IceTile(position = game.at(9, 10)),
        new IceTile(position = game.at(9, 11)),

        new IceTile(position = game.at(10, 7)),
        new IceTile(position = game.at(10, 8)),
        new IceTile(position = game.at(10, 10)),
        new IceTile(position = game.at(10, 11)),

        new IceTile(position = game.at(11, 10)),

        new IceTile(position = game.at(12, 10)),

        new IceTile(position = game.at(13, 10)),
        new IceTile(position = game.at(13, 11)),
        new IceTile(position = game.at(13, 12)),

        new IceTile(position = game.at(14, 8)),
        new IceTile(position = game.at(14, 9)),
        new IceTile(position = game.at(14, 10)),
        new IceTile(position = game.at(14, 11)),
        new IceTile(position = game.at(14, 12)),

        new IceTile(position = game.at(15, 11)),
        new IceTile(position = game.at(15, 12))
        
    ],
    initialTile = new Tile(position = game.at(3, 7)),
    bonusTile = new BonusTile(position = game.at(7, 7)),
    goalTile = new GoalTile(position = game.at(14, 7)),
    nextLevel = level1
)

