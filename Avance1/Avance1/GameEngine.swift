
import Foundation

struct GameEngine {
    var pieces: Set<GamePiece> = Set<GamePiece>()
    
    mutating func movePiece(fromCol: Int, fromRow: Int, toCol:Int, toRow:Int) {
        
        if fromCol == toCol && fromRow == toRow{
            return
        }
        
        guard let candidate = pieceAt(col: fromCol, row: fromRow) else{
            return
        }
        
        pieces.remove(candidate)
        pieces.insert(GamePiece(col: toCol, row: toRow, imgName: candidate.imgName))
        
        
        
    }
    
    func pieceAt(col: Int, row: Int) -> GamePiece? {
        for piece in pieces {
            if col == piece.col && row == piece.row {
                return piece
            }
        }
        return nil
    }
    
    mutating func initializeGame() {
        pieces.removeAll()
        
        pieces.insert(GamePiece(col: 4, row: 0, imgName: "Rojo"))
        
        pieces.insert(GamePiece(col: 3, row: 1, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 1, imgName: "Rojo"))
        
        pieces.insert(GamePiece(col: 3, row: 2, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 2, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 5, row: 2, imgName: "Rojo"))
        
        
        pieces.insert(GamePiece(col: 2, row: 3, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 3, row: 3, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 3, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 5, row: 3, imgName: "Rojo"))
        
        
        pieces.insert(GamePiece(col: 4, row: 16, imgName: "Rojo"))
        
        pieces.insert(GamePiece(col: 3, row: 15, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 15, imgName: "Rojo"))
        
        pieces.insert(GamePiece(col: 3, row: 14, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 14, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 5, row: 14, imgName: "Rojo"))
        
        
        pieces.insert(GamePiece(col: 2, row: 13, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 3, row: 13, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 4, row: 13, imgName: "Rojo"))
        pieces.insert(GamePiece(col: 5, row: 13, imgName: "Rojo"))

    }
}
