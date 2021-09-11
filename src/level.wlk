import wollok.game.*
//import level1.*

class Level {
    const property solidTiles
    const property iceTiles
    const property initialTile
    const property goalTile
    const property bonusTile

    method generateLevel() {
        self.solidTiles().forEach {solid => solid.render()}
        self.iceTiles().forEach {ice => ice.render()}
        self.initialTile().render()
        self.bonusTile().render()
        self.goalTile().render()
    }

    //todo: implementar backgroundTiles donde no haya de otro tipo. Podría ser un PNG de background que tome toda la página
}

