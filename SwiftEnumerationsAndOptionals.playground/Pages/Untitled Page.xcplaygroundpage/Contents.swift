class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}

enum Direction {
    case Left
    case Right
    case Up
    case Down
}


class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: Direction) {
        // Enter your code below
        switch direction {
        case .Up: return location.y += 1
        case .Down: return location.y -= 1
        case .Right: return location.x += 1
        case .Left: return location.x -= 1
        }
    }
}