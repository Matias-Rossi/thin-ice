import wollok.game.*
import nivel.*
import level.*
import direcciones.*

object puffle {
    var property position = game.at(14,4) //nivel().initialTile() /*todo: implementar posicion inicial*/

    method image() {
        return "./assets/sprites/specialItems/puff.png"
    }

    method move(direction) {
        position = direction.nextPosition(position) 
    }

    
}