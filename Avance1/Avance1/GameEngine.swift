
import Foundation

struct GameEngine {
    var pieces: Set<GamePiece> = Set<GamePiece>()
    var redTurn: Bool = true
    
    mutating func movePiece(fromCol: Int, fromRow: Int, toCol:Int, toRow:Int) {
        
        if !canMovePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow){
            return
        }
        
        
        guard let candidate = pieceAt(col: fromCol, row: fromRow) else{
            return
        }
        
        if let target = pieceAt(col: toCol, row: toRow){
            if target.isRed == candidate.isRed{
                return
            }
            
        }
        
        
        pieces.remove(candidate)
        pieces.insert(GamePiece(col: toCol, row: toRow, imgName: candidate.imgName, isRed: candidate.isRed))
        
        redTurn = !redTurn
        
        
        
    }
    
    func canMovePiece(fromCol: Int, fromRow: Int, toCol:Int, toRow:Int) -> Bool {
        if toCol < 0 || toCol > 8{
            return false
        }
        
        
        if fromCol == toCol && fromRow == toRow{
            return false
        }
        
        guard let candidate = pieceAt(col: fromCol, row: fromRow) else{
            return false
        }
        
        if candidate.isRed != redTurn{
            return false
            
        }
        
        if ((redTurn && fromRow <= toRow) || (!redTurn && fromRow >= toRow)) {
            return false
            
        }
        if (!redTurn && (fromRow % 2 == 0) && fromCol > toCol){
            print (fromCol % 2)
            return false
        }


        
        let deltaCol = abs(fromCol - toCol)
        let deltaRow = abs(fromRow - toRow)
        
        
        return (deltaCol == 1 || deltaRow == 1) && (deltaCol + deltaRow) < 3
        
//        return true
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
        redTurn = true
        pieces.removeAll()
        
        pieces.insert(GamePiece(col: 4, row: 0, imgName: "Rojo", isRed: false))
        
        pieces.insert(GamePiece(col: 4, row: 1, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 5, row: 1, imgName: "Rojo", isRed: false))
        
        pieces.insert(GamePiece(col: 3, row: 2, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 4, row: 2, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 5, row: 2, imgName: "Rojo", isRed: false))
        
        
        pieces.insert(GamePiece(col: 3, row: 3, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 4, row: 3, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 5, row: 3, imgName: "Rojo", isRed: false))
        pieces.insert(GamePiece(col: 6, row: 3, imgName: "Rojo", isRed: false))
        
        
        pieces.insert(GamePiece(col: 4, row: 16, imgName: "Rojo", isRed: true))
        
        pieces.insert(GamePiece(col: 4, row: 15, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 5, row: 15, imgName: "Rojo", isRed: true))
        
        pieces.insert(GamePiece(col: 3, row: 14, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 4, row: 14, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 5, row: 14, imgName: "Rojo", isRed: true))
        
        
        pieces.insert(GamePiece(col: 3, row: 13, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 4, row: 13, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 5, row: 13, imgName: "Rojo", isRed: true))
        pieces.insert(GamePiece(col: 6, row: 13, imgName: "Rojo", isRed: true))

    }
}
