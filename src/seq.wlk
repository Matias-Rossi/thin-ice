class SeqTo4 {
    var property value = 1.randomUpTo(4)

    method updateValue() {
        if(value < 4) {
            value = value + 1
        } else {
            value = 1
        }
	}
}