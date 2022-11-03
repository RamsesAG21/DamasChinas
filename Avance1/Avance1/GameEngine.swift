
import Foundation

struct GameEngine {
    var pieces: Set<GamePiece> = Set<GamePiece>()
    
    mutating func initializeGame() {
        pieces.removeAll()
        
        pieces.insert(GamePiece(col: 0, row: 0, imgName: "Rojo"))
    }
}
