struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String : String]) -> Friend {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}