// Class of sequential objects which counter can be incremented to 4 before being reset to 0
class SeqTo4 {
    var property value 

    method updateValue() {
        if(value < 4) {
            value = value + 1
        } else {
            value = 1
        }
	}

    method setRandom() {
        value = 1.randomUpTo(4)
    }
}