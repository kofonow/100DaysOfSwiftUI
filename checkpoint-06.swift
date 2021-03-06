// checkpoint 6
// create a struct to store information about a car. Include:
//      - its model
//      - number of seats
//      - current gear
// add a method to change gears up or down
// have a think about variables and access control
// don't allow invalid gears. 1...10 seems a fair maximum range.

struct Car {
    let model: String
    let seats: Int
    static let lowGear = 1 // Decided this is standard for all cars just so I could play with static
    let highGear: Int
    private(set) var currentGear = 1 {
        willSet {
            print("Shifting from \(currentGear) to \(newValue)")
        }
        didSet {
            print("Gear is now \(currentGear)")
        }
    }
    var newGear = 1
    
    init(carModel: String, carSeats: Int, carHighGear: Int) {
        self.model = carModel
        self.seats = carSeats
        self.highGear = carHighGear
    }
    
    func shiftTrouble() {
            print("Having trouble shifting from \(currentGear) to \(newGear)")
    }
    
    // method to change gears. is mutating
    // if I were to re-write this, I'd go with just one mutating function for shifting that accepted a positive or negative integer to trigger shifting up or down
    mutating func shiftUp(shift: Int) -> Bool {
        newGear = currentGear + shift
        if newGear < highGear {
            self.currentGear += shift
            return true
        } else {
            shiftTrouble()
            print("Sorry, you can't shift up \(shift) to gear \(self.newGear).")
            return false
        }
    }

    mutating func shiftDown(shift: Int) -> Bool {
        newGear = currentGear - shift
        if newGear > Car.lowGear {
            self.currentGear -= shift
            return true
        } else {
            shiftTrouble()
            print("Sorry, you can't shift down \(shift) to gear \(self.newGear).")
            return false
        }
    }
    
}

var myCar = Car(carModel: "Toyota 4Runner", carSeats: 5, carHighGear: 9)

print("The \(myCar.model) seats \(myCar.seats), and runs from gears \(Car.lowGear) to \(myCar.highGear)")
myCar.shiftUp(shift: 1)
myCar.shiftUp(shift: 10)
myCar.shiftDown(shift: 2)
myCar.shiftUp(shift: 5)
