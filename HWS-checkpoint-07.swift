import Cocoa

// Checkpoint 7
//
// make a class hierarchy for ANIMAL(s)
// start with an ANIMAL class. add a LEGS property for the number of legs an animal has
// make DOG a subclass of ANIMAL, giving it a SPEAK() method that prints a DOG BARKING STRING, but each subclass should print SOMETHING DIFFERENT.
// specifically make CORGI and PODDLE subclasses of DOG
// make CAT an ANIMAL subclass. Add a SPEAK() method, with each subclass printing something differnet, and an ISTAME boolean, set with an INITALIZER.
// make PERSIAN and LION subclasses of CAT

// this was my own attempt. While it functions, what I got wrong was i made instances for the two dogs and the two cats instead of subclasses. I missed the nuanec in the instrucions.
// Still... I got to here without the HWS+ solution.

class Animal {
    let legs: Int
    let name: String
    let voice: String
    
    init(legs: Int, name: String, voice: String) {
        self.legs = legs
        self.name = name
        self.voice = voice
    }
    
    func speak() {
        // print a custom speak
        print("The \(name) says \(voice)")
    }
}

class Dog: Animal {}

let corgi = Dog(legs: 4, name: "Corgi",voice: "bark bark bark") // these are instances, not subclasses
let poodle = Dog(legs: 4, name: "Poodle",voice: "woof woof woof") // these are instances, not subclasses

corgi.speak()
poodle.speak()

class Cat: Animal {
    let isTame: Bool
    var tameness: String
    init(legs: Int, name: String, voice: String, isTame: Bool) {
        self.isTame = isTame
        if isTame {
            self.tameness = "tamed"
        } else {
            self.tameness = "untamed"
        }
        super.init(legs: legs, name: name, voice: voice)
    }
    
    override func speak() {
        // print a custom speak
        print("The \(tameness) \(name) says \(voice)")
    }
}

let persian = Cat(legs: 4, name: "Persian",voice: "purrrrrr", isTame: true)
let lion = Cat(legs: 4, name: "Lion",voice: "roarrrrrr", isTame: false)

persian.speak()
lion.speak()
