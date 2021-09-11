import wollok.game.*
import nivel.*
import level.*
import direcciones.*
import tile.*

object puffle {
    var property position = game.at(14,4) //nivel().initialTile() /*todo: implementar posicion inicial*/

    method image() {
        return "./assets/sprites/specialItems/puff.png"
    }

    method move(direction) {

        if(game.getObjectsIn(direction.nextPosition(position)).all({tile => tile.canBeSteppedOn()})){
            const colliders = game.getObjectsIn(position)
            colliders.forEach({tile => tile.setWater()})
            position = direction.nextPosition(position) 
        }
        //else { hacer algun sonido} //todo:
    }

    method setWater() {}

    method completarNivel(_objeto) {
        if(position == nivel.currentLevel().goalTile().position()) {
            game.say(self, "Nivel completado")
            nivel.currentLevel(nivel.currentLevel().nextLevel())
            nivel.currentLevel().reset()
        }
    }

    
}