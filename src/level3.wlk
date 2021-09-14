import wollok.game.*
import level.*
import tile.*
import level4.* 
//temp

const level3 = new Level(
    solidTiles = [
        new SolidTile(position = game.at(2, 2)),
        new SolidTile(position = game.at(2, 3)),
        new SolidTile(position = game.at(2, 4)),
        new SolidTile(position = game.at(2, 5)),
        new SolidTile(position = game.at(2, 6)),
        new SolidTile(position = game.at(2, 7)),
        new SolidTile(position = game.at(2, 8)),

        new SolidTile(position = game.at(3, 2)),
        new SolidTile(position = game.at(3, 8)),

        new SolidTile(position = game.at(4, 2)),
        new SolidTile(position = game.at(4, 5)),
        new SolidTile(position = game.at(4, 6)),
        new SolidTile(position = game.at(4, 7)),
        new SolidTile(position = game.at(4, 8)),

        new SolidTile(position = game.at(5, 2)),
        new SolidTile(position = game.at(5, 3)),
        new SolidTile(position = game.at(5, 5)),
        new SolidTile(position = game.at(5, 6)),

        new SolidTile(position = game.at(6, 3)),
        new SolidTile(position = game.at(6, 6)),

        new SolidTile(position = game.at(7, 3)),
        new SolidTile(position = game.at(7, 6)),

        new SolidTile(position = game.at(8, 2)),
        new SolidTile(position = game.at(8, 3)),
        new SolidTile(position = game.at(8, 5)),
        new SolidTile(position = game.at(8, 6)),

        new SolidTile(position = game.at(9, 2)),
        new SolidTile(position = game.at(9, 5)),

        new SolidTile(position = game.at(10, 2)),
        new SolidTile(position = game.at(10, 5)),

        new SolidTile(position = game.at(11, 2)),
        new SolidTile(position = game.at(11, 3)),
        new SolidTile(position = game.at(11, 5)),

        new SolidTile(position = game.at(12, 2)),
        new SolidTile(position = game.at(12, 3)),
        new SolidTile(position = game.at(12, 5)),

        new SolidTile(position = game.at(13, 2)),
        new SolidTile(position = game.at(13, 5)),
        new SolidTile(position = game.at(13, 6)),
        new SolidTile(position = game.at(13, 7)),
        new SolidTile(position = game.at(13, 8)),

        new SolidTile(position = game.at(14, 2)),
        new SolidTile(position = game.at(14, 8)),

        new SolidTile(position = game.at(15, 2)),
        new SolidTile(position = game.at(15, 3)),
        new SolidTile(position = game.at(15, 4)),
        new SolidTile(position = game.at(15, 5)),
        new SolidTile(position = game.at(15, 6)),
        new SolidTile(position = game.at(15, 7)),
        new SolidTile(position = game.at(15, 8))
        
        
    ],
    iceTiles = [
        new IceTile(position = game.at(3, 3)),
        new IceTile(position = game.at(3, 4)),
        new IceTile(position = game.at(3, 5)),
        new IceTile(position = game.at(3, 6)),

        new IceTile(position = game.at(4, 3)),
        new IceTile(position = game.at(4, 4)),

        new IceTile(position = game.at(5, 4)),

        new IceTile(position = game.at(6, 4)),
        new IceTile(position = game.at(6, 5)),

        new IceTile(position = game.at(7, 4)),
        new IceTile(position = game.at(7, 5)),

        new IceTile(position = game.at(8, 4)),

        new IceTile(position = game.at(9, 3)),
        new IceTile(position = game.at(9, 4)),

        new IceTile(position = game.at(10, 3)),
        new IceTile(position = game.at(10, 4)),

        new IceTile(position = game.at(11, 4)),
        new IceTile(position = game.at(12, 4)),

        new IceTile(position = game.at(13, 3)),
        new IceTile(position = game.at(13, 4)),

        new IceTile(position = game.at(14, 3)),
        new IceTile(position = game.at(14, 4)),
        new IceTile(position = game.at(14, 5)),
        new IceTile(position = game.at(14, 6)),
        new IceTile(position = game.at(14, 7))
    ],
    doubleTiles = [],
    initialTile = new Tile(position = game.at(14, 7)),
    goalTile = new GoalTile(position = game.at(3,7)),
    nextLevel = level4,

    //Unused
    bonusTile = new BonusTile(position = game.at(-1,-1)),
    lockTiles = [],
    keyTile = new KeyTile(position = game.at(-1, -1)),
    moveableTile = new MoveableTile(initialPos = game.at(-1, -1)),
    plateTile = new PlateTile(position = game.at(-1, -1)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = true,
    plateIsPressed = true
)

