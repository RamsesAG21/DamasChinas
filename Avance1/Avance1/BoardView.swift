//
//  BoardView.swift
//  Avance1
//
//  Created by user223065 on 11/3/22.
//

import UIKit

class BoardView: UIView {
    let ratio: CGFloat = 0.8
    var originX: CGFloat = -10
    var originY: CGFloat = -10
    var cellSide: CGFloat = -10
    //for reference 28 335/2 - 14

    
    var shadowPieces: Set<GamePiece> = Set<GamePiece>()
    
    var gameDelegate: GameDelegate? = nil
    
    var fromCol: Int? = nil
    var fromRow: Int? = nil
    
    var movingImage: UIImage? = nil
    
    var movingPieceX: CGFloat = -1
    var movingPieceY: CGFloat = -1
    
    

    override func draw(_ rect: CGRect) {
        cellSide = bounds.width * ratio / 9
        originX = bounds.width * (1 - ratio) / 2
        originY = bounds.height * (0.82 - ratio) / 2
        
        
        // Drawing code
        drawBoard()
        drawPieces()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        print(fingerLocation)
        
        fromCol = Int((fingerLocation.x - originX) / cellSide)
        fromRow = Int((fingerLocation.y - originY) / cellSide)
        
        if let fromCol = fromCol, let fromRow = fromRow, let movingPiece = gameDelegate?.pieceAt(col: fromCol, row: fromRow){
            movingImage = UIImage(named: movingPiece.imgName)
        }
        

//        movingImage?.images
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        
        movingPieceX = fingerLocation.x
        movingPieceY = fingerLocation.y
        
        setNeedsDisplay()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        print(fingerLocation)
        
        let toCol: Int = Int((fingerLocation.x - originX) / cellSide)
        let toRow: Int = Int((fingerLocation.y - originY) / cellSide)

        print("( \(toCol), \(toRow))")
        
        if let fromCol = fromCol, let fromRow = fromRow, fromCol != toCol || fromRow != toRow{
            gameDelegate?.movePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
        }
        
        movingImage = nil
        fromCol = nil
        fromRow = nil
        setNeedsDisplay()
    }
    
    
    
    func drawPieces() {
        for piece in shadowPieces where !(fromCol == piece.col && fromRow == piece.row ){
            let pieceImage = UIImage(named: piece.imgName)
            
            if (piece.row % 2 == 1){
                pieceImage?.draw(in: CGRect(x: (originX + CGFloat(piece.col) * cellSide) - cellSide/2, y: originY + CGFloat(piece.row) * cellSide, width: cellSide, height: cellSide))
            }
            else{
                pieceImage?.draw(in: CGRect(x: originX + CGFloat(piece.col) * cellSide, y: originY + CGFloat(piece.row) * cellSide, width: cellSide, height: cellSide))
            }
            
            
        }
        movingImage?.draw(in: CGRect(x: movingPieceX - cellSide/2 , y: movingPieceY - cellSide/2, width: cellSide, height: cellSide))
        
    } 
    
    func drawBoard() {
        
//        for row in 0..<17 {
//            if row % 2 == 0{
//                drawCircle(col: 0, row: row, color: UIColor.white)
//            }
//            else{
//                drawCircle(col: 0, row: row, color: UIColor.white)
//                drawCircle(col: 1, row: row, color: UIColor.white)
//
//            }
//        }
        
        drawCircle(col: 4, row: 0, color: UIColor.green)
        
        drawCircle2(col: 4, row: 1, color: UIColor.green)
        drawCircle2(col: 5, row: 1, color: UIColor.green)
        
        drawCircle(col: 3, row: 2, color: UIColor.green)
        drawCircle(col: 4, row: 2, color: UIColor.green)
        drawCircle(col: 5, row: 2, color: UIColor.green)
        
        drawCircle2(col: 3, row: 3, color: UIColor.green)
        drawCircle2(col: 4, row: 3, color: UIColor.green)
        drawCircle2(col: 5, row: 3, color: UIColor.green)
        drawCircle2(col: 6, row: 3, color: UIColor.green)
        
        drawCircle(col: 2, row: 4, color: UIColor.white)
        drawCircle(col: 3, row: 4, color: UIColor.white)
        drawCircle(col: 4, row: 4, color: UIColor.white)
        drawCircle(col: 5, row: 4, color: UIColor.white)
        drawCircle(col: 6, row: 4, color: UIColor.white)
        
        drawCircle2(col: 2, row: 5, color: UIColor.white)
        drawCircle2(col: 3, row: 5, color: UIColor.white)
        drawCircle2(col: 4, row: 5, color: UIColor.white)
        drawCircle2(col: 5, row: 5, color: UIColor.white)
        drawCircle2(col: 6, row: 5, color: UIColor.white)
        drawCircle2(col: 7, row: 5, color: UIColor.white)
        
        drawCircle(col: 1, row: 6, color: UIColor.white)
        drawCircle(col: 2, row: 6, color: UIColor.white)
        drawCircle(col: 3, row: 6, color: UIColor.white)
        drawCircle(col: 4, row: 6, color: UIColor.white)
        drawCircle(col: 5, row: 6, color: UIColor.white)
        drawCircle(col: 6, row: 6, color: UIColor.white)
        drawCircle(col: 7, row: 6, color: UIColor.white)
        
        drawCircle2(col: 1, row: 7, color: UIColor.white)
        drawCircle2(col: 2, row: 7, color: UIColor.white)
        drawCircle2(col: 3, row: 7, color: UIColor.white)
        drawCircle2(col: 4, row: 7, color: UIColor.white)
        drawCircle2(col: 5, row: 7, color: UIColor.white)
        drawCircle2(col: 6, row: 7, color: UIColor.white)
        drawCircle2(col: 7, row: 7, color: UIColor.white)
        drawCircle2(col: 8, row: 7, color: UIColor.white)
        
        drawCircle(col: 0, row: 8, color: UIColor.white)
        drawCircle(col: 1, row: 8, color: UIColor.white)
        drawCircle(col: 2, row: 8, color: UIColor.white)
        drawCircle(col: 3, row: 8, color: UIColor.white)
        drawCircle(col: 4, row: 8, color: UIColor.white)
        drawCircle(col: 5, row: 8, color: UIColor.white)
        drawCircle(col: 6, row: 8, color: UIColor.white)
        drawCircle(col: 7, row: 8, color: UIColor.white)
        drawCircle(col: 8, row: 8, color: UIColor.white)
        
        drawCircle2(col: 1, row: 9, color: UIColor.white)
        drawCircle2(col: 2, row: 9, color: UIColor.white)
        drawCircle2(col: 3, row: 9, color: UIColor.white)
        drawCircle2(col: 4, row: 9, color: UIColor.white)
        drawCircle2(col: 5, row: 9, color: UIColor.white)
        drawCircle2(col: 6, row: 9, color: UIColor.white)
        drawCircle2(col: 7, row: 9, color: UIColor.white)
        drawCircle2(col: 8, row: 9, color: UIColor.white)
        
        drawCircle(col: 1, row: 10, color: UIColor.white)
        drawCircle(col: 2, row: 10, color: UIColor.white)
        drawCircle(col: 3, row: 10, color: UIColor.white)
        drawCircle(col: 4, row: 10, color: UIColor.white)
        drawCircle(col: 5, row: 10, color: UIColor.white)
        drawCircle(col: 6, row: 10, color: UIColor.white)
        drawCircle(col: 7, row: 10, color: UIColor.white)
        

        drawCircle2(col: 2, row: 11, color: UIColor.white)
        drawCircle2(col: 3, row: 11, color: UIColor.white)
        drawCircle2(col: 4, row: 11, color: UIColor.white)
        drawCircle2(col: 5, row: 11, color: UIColor.white)
        drawCircle2(col: 6, row: 11, color: UIColor.white)
        drawCircle2(col: 7, row: 11, color: UIColor.white)
        
        drawCircle(col: 2, row: 12, color: UIColor.white)
        drawCircle(col: 3, row: 12, color: UIColor.white)
        drawCircle(col: 4, row: 12, color: UIColor.white)
        drawCircle(col: 5, row: 12, color: UIColor.white)
        drawCircle(col: 6, row: 12, color: UIColor.white)
        
        drawCircle2(col: 3, row: 13, color: UIColor.red)
        drawCircle2(col: 4, row: 13, color: UIColor.red)
        drawCircle2(col: 5, row: 13, color: UIColor.red)
        drawCircle2(col: 6, row: 13, color: UIColor.red)

        drawCircle(col: 3, row: 14, color: UIColor.red)
        drawCircle(col: 4, row: 14, color: UIColor.red)
        drawCircle(col: 5, row: 14, color: UIColor.red)
        
        drawCircle2(col: 4, row: 15, color: UIColor.red)
        drawCircle2(col: 5, row: 15, color: UIColor.red)
        
        drawCircle(col: 4, row: 16, color: UIColor.red)
        
        
        
        




        
        
        
        
    }
    func drawCircle(col: Int, row: Int, color: UIColor ) {
        let path = UIBezierPath(ovalIn: CGRect(x: originX + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
    }
    func drawCircle2(col: Int, row: Int, color: UIColor ) {
        let path = UIBezierPath(ovalIn: CGRect(x: originX - (cellSide / 2) + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
    }
    
    

}
