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