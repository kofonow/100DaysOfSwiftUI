import Cocoa

// Checkpoint 08

// PROTOCOL for a building
//  property storing how many rooms it has INT
//  property storing the costs as an INT
//  property storing the name of the estate agent as a STRING
//  method for printing the sales summary of the building MULTILINE STRING
// two STRUCTS, House and Office

protocol Building {
    var type: String { get }
    var name: String { get }
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func summary()
}

extension Building {
    func summary() {
        print("The \(name) \(type) with \(rooms) rooms was sold for $\(cost) by agent \(agent)")
    }
}

struct House: Building {
    let type = "house"
    let name: String
    var rooms: Int // made variable since home could have additions later
    let cost: Int
    let agent: String
}

struct Office: Building {
    let type = "office"
    let name: String
    let rooms: Int
    let cost: Int
    let agent: String
}

let home = House(name: "Vacation Home", rooms: 5, cost: 240_000, agent: "Leslie")
print(home.summary()) // first way I did this. Is the reason () were showing on a new line. Is duplicitous because summary() already returns a print function

let office = Office(name: "Business Center", rooms: 200, cost: 1_000_000, agent: "Alexandra")
office.summary()

