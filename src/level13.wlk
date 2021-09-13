import wollok.game.*
import level.*
import tile.*
import level1.* 

//temp

//Author: Franco Pasqualino
//Altered by Matias Rossi

const level13 = new Level (
	solidTiles = [
	 //Horizontal walls (> 2 length)
        new SolidWall(
            start = new Coordinates(x = 7, y = 14),
            end = new Coordinates(x = 10, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 14),
            end = new Coordinates(x = 14, y = 14),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 13),
            end = new Coordinates(x = 7, y = 13),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 13),
            end = new Coordinates(x = 12, y = 13),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 10, y = 11),
            end = new Coordinates(x = 11, y = 11),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 4, y = 10),
            end = new Coordinates(x = 6, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 10),
            end = new Coordinates(x = 15, y = 10),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 9),
            end = new Coordinates(x = 10, y = 9),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 14, y = 8),
            end = new Coordinates(x = 15, y = 8),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 7),
            end = new Coordinates(x = 7, y = 7),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 0, y = 6),
            end = new Coordinates(x = 2, y = 6),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 6, y = 4),
            end = new Coordinates(x = 10, y = 4),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 13, y = 4),
            end = new Coordinates(x = 17, y = 4),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 12, y = 3),
            end = new Coordinates(x = 13, y = 3),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 2, y = 2),
            end = new Coordinates(x = 3, y = 2),
            orientation = "x"
        ),
        new SolidWall(
            start = new Coordinates(x = 5, y = 2),
            end = new Coordinates(x = 10, y = 2),
            orientation = "x"
        ),
         new SolidWall(
            start = new Coordinates(x = 10, y = 1),
            end = new Coordinates(x = 17, y = 1),
            orientation = "x"
        ),
         new SolidWall(
            start = new Coordinates(x = 0, y = 0),
            end = new Coordinates(x = 5, y = 0),
            orientation = "x"
        ),
        
        
      //single
	     new SolidTile(position = game.at(14 , 13)),
	     new SolidTile(position = game.at(2 , 12)),
	     new SolidTile(position = game.at(5 , 12)),
	     new SolidTile(position = game.at(14 , 12)),
	     new SolidTile(position = game.at(2 , 11)),
	     new SolidTile(position = game.at(14 , 11)),
	     new SolidTile(position = game.at(2 , 10)),
	     new SolidTile(position = game.at(2 , 9)),
	     new SolidTile(position = game.at(4 , 9)),
	     new SolidTile(position = game.at(15 , 9)),
	     new SolidTile(position = game.at(2 , 8)),
	     new SolidTile(position = game.at(2 , 7)),
	     new SolidTile(position = game.at(4 , 7)),
	     new SolidTile(position = game.at(14 , 7)),
	     new SolidTile(position = game.at(4 , 6)),
	     new SolidTile(position = game.at(6 , 6)),
	     new SolidTile(position = game.at(14 , 6)),
	     new SolidTile(position = game.at(0 , 5)),
	     new SolidTile(position = game.at(2 , 5)),
	     new SolidTile(position = game.at(4 , 5)),
	     new SolidTile(position = game.at(6 , 5)),
	     new SolidTile(position = game.at(14 , 5)),
	     new SolidTile(position = game.at(0 , 4)),
	     new SolidTile(position = game.at(2 , 4)),
	     new SolidTile(position = game.at(4 , 4)),
	     new SolidTile(position = game.at(0 , 3)),
	     new SolidTile(position = game.at(2 , 3)),
	     new SolidTile(position = game.at(6 , 3)),
	     new SolidTile(position = game.at(17 , 3)),
	     new SolidTile(position = game.at(0 , 2)),
	     new SolidTile(position = game.at(17 , 2)),
	     new SolidTile(position = game.at(0 , 1)),
	     new SolidTile(position = game.at(5 , 1))
	     
	     
	    
    ],
     
    iceTiles = [
	    //Horizontal
        new IceWall(
            start = new Coordinates(x = 8, y = 13),
            end = new Coordinates(x = 9, y = 13),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 3, y = 12),
            end = new Coordinates(x = 4, y = 12),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 6, y = 12),
            end = new Coordinates(x = 8, y = 12),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 10, y = 12),
            end = new Coordinates(x = 11, y = 12),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 3, y = 11),
            end = new Coordinates(x = 9, y = 11),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 12, y = 11),
            end = new Coordinates(x = 13, y = 11),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 7, y = 10),
            end = new Coordinates(x = 13, y = 10),
            orientation = "x"
        ),
        new IceWall(
            start = new Coordinates(x = 4, y = 8),
            end = new Coordinates(x = 10, y = 8),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 12, y = 8),
            end = new Coordinates(x = 13, y = 8),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 8, y = 7),
            end = new Coordinates(x = 10, y = 7),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 7, y = 6),
            end = new Coordinates(x = 12, y = 6),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 7, y = 5),
            end = new Coordinates(x = 10, y = 5),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 14, y = 3),
            end = new Coordinates(x = 16, y = 3),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 11, y = 2),
            end = new Coordinates(x = 13, y = 2),
            orientation = "x"
        ),
        
        new IceWall(
            start = new Coordinates(x = 15, y = 2),
            end = new Coordinates(x = 16, y = 2),
            orientation = "x"
        ),
        
        //Vertical
        new IceWall(
            start = new Coordinates(x = 3, y = 7),
            end = new Coordinates(x = 3, y = 3),
            orientation = "y"
        ),
        
        new IceWall(
            start = new Coordinates(x = 5, y = 7),
            end = new Coordinates(x = 5, y = 3),
            orientation = "y"
        ),
        

	     
	    //single
        new IceTile(position = game.at(13 , 13)),
        new IceTile(position = game.at(3 , 10)),
        new IceTile(position = game.at(3 , 9)),
        new IceTile(position = game.at(14 , 9)),
        new IceTile(position = game.at(12 , 4)),
        new IceTile(position = game.at(8 , 3)),
        new IceTile(position = game.at(10 , 3)),
        new IceTile(position = game.at(1 , 5))

       
    ],
      
      doubleTiles = [
        new DoubleTile(position = game.at(9 , 12)),
        new DoubleTile(position = game.at(12 , 12)),
        new DoubleTile(position = game.at(13 , 12)),
        new DoubleTile(position = game.at(11 , 9)),
        new DoubleTile(position = game.at(12 , 9)),
        new DoubleTile(position = game.at(13 , 9)),
        new DoubleTile(position = game.at(3 , 8)),
        new DoubleTile(position = game.at(11 , 8)),
        new DoubleTile(position = game.at(11 , 7)),
        new DoubleTile(position = game.at(12 , 7)),
        new DoubleTile(position = game.at(13 , 7)),
        new DoubleTile(position = game.at(13 , 6)),
        new DoubleTile(position = game.at(11 , 5)),
        new DoubleTile(position = game.at(12 , 5)),
        new DoubleTile(position = game.at(13 , 5)),
        new DoubleTile(position = game.at(1 , 4)),
        new DoubleTile(position = game.at(11 , 4)),
        new DoubleTile(position = game.at(1 , 3)),
        new DoubleTile(position = game.at(4 , 3)),
        new DoubleTile(position = game.at(11 , 3)),
        new DoubleTile(position = game.at(1 , 2)),
        new DoubleTile(position = game.at(4 , 2)),
        new DoubleTile(position = game.at(14 , 2)),
        new DoubleTile(position = game.at(1 , 1)),
        new DoubleTile(position = game.at(2 , 1)),
        new DoubleTile(position = game.at(3 , 1)),
        new DoubleTile(position = game.at(4 , 1))
        
    ],
	     
	lockTiles = [new LockTile(position = game.at(9, 3))],
    keyTile = new KeyTile(position = game.at(1, 5)),
    initialTile = new Tile(position = game.at(15, 3)),
    bonusTile = new BonusTile(position = game.at(9, 7)),
    goalTile = new GoalTile(position = game.at(7, 3)),
    nextLevel = level1,

    //unused
    moveableTile = new MoveableTile(initialPos = game.at(5, 5)),
    plateTile = new PlateTile(position = game.at(5, 9)),
    portalTileA = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    portalTileB = new PortalTile(position = game.at(-1, -1), teleportTo = game.at(-1,-1)),
    doesntRequirePlate = false,
    plateIsPressed = false
)
