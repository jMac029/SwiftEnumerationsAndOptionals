enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.10
    case Quarter = 0.25
}

let wallet: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter, .Penny,
    .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Penny]

var count: Int = 0

for coin in wallet {
    switch coin {
    case .Quarter: count += 1
    default: continue
    }
}

for case .Quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .Nickel = coin {
        print("Not so much money")
    } else if case .Dime = coin {
        print("Eh I guess it's some money")
    }
}

let someOptional: Int? = 42

if case .Some(let x) = someOptional {
    print(x)
}


// Nil Coalescing Operator

let firstName: String? = "James"
let userName = "Jamesdm"

var displayName: String

if firstName != nil {
    displayName = firstName!
} else {
    displayName = userName
}

displayName = firstName != nil ? firstName! : userName

displayName = firstName ?? userName









