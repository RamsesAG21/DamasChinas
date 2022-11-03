//
//  BoardView.swift
//  Avance1
//
//  Created by user223065 on 11/3/22.
//

import UIKit

class BoardView: UIView {
    let originX: CGFloat = 335/2 - 14
    let originY: CGFloat = 10
    let cellSide: CGFloat = 28
    

    override func draw(_ rect: CGRect) {
        // Drawing code
        drawBoard()
    }
    
    func drawBoard() {
        
//        for row in 0..<17 {
//            if row % 2 == 0{
//                drawCircle(col: 0, row: row, color: UIColor.white)
//            }
//            else{
//                drawCircle2(col: 0, row: row, color: UIColor.white)
//                drawCircle2(col: 1, row: row, color: UIColor.white)
//
//            }
//        }
        
        drawCircle(col: 0, row: 0, color: UIColor.green)
        
        drawCircle2(col: 0, row: 1, color: UIColor.green)
        drawCircle2(col: 1, row: 1, color: UIColor.green)
        
        drawCircle(col: -1, row: 2, color: UIColor.green)
        drawCircle(col: 0, row: 2, color: UIColor.green)
        drawCircle(col: 1, row: 2, color: UIColor.green)
        
        drawCircle2(col: -1, row: 3, color: UIColor.green)
        drawCircle2(col: 0, row: 3, color: UIColor.green)
        drawCircle2(col: 1, row: 3, color: UIColor.green)
        drawCircle2(col: 2, row: 3, color: UIColor.green)
        
        drawCircle(col: -2, row: 4, color: UIColor.white)
        drawCircle(col: -1, row: 4, color: UIColor.white)
        drawCircle(col: 0, row: 4, color: UIColor.white)
        drawCircle(col: 1, row: 4, color: UIColor.white)
        drawCircle(col: 2, row: 4, color: UIColor.white)
        
        drawCircle2(col: -2, row: 5, color: UIColor.white)
        drawCircle2(col: -1, row: 5, color: UIColor.white)
        drawCircle2(col: 0, row: 5, color: UIColor.white)
        drawCircle2(col: 1, row: 5, color: UIColor.white)
        drawCircle2(col: 2, row: 5, color: UIColor.white)
        drawCircle2(col: 3, row: 5, color: UIColor.white)
        
        drawCircle(col: -3, row: 6, color: UIColor.white)
        drawCircle(col: -2, row: 6, color: UIColor.white)
        drawCircle(col: -1, row: 6, color: UIColor.white)
        drawCircle(col: 0, row: 6, color: UIColor.white)
        drawCircle(col: 1, row: 6, color: UIColor.white)
        drawCircle(col: 2, row: 6, color: UIColor.white)
        drawCircle(col: 3, row: 6, color: UIColor.white)
        
        drawCircle2(col: -3, row: 7, color: UIColor.white)
        drawCircle2(col: -2, row: 7, color: UIColor.white)
        drawCircle2(col: -1, row: 7, color: UIColor.white)
        drawCircle2(col: 0, row: 7, color: UIColor.white)
        drawCircle2(col: 1, row: 7, color: UIColor.white)
        drawCircle2(col: 2, row: 7, color: UIColor.white)
        drawCircle2(col: 3, row: 7, color: UIColor.white)
        drawCircle2(col: 4, row: 7, color: UIColor.white)
        
        drawCircle(col: -4, row: 8, color: UIColor.white)
        drawCircle(col: -3, row: 8, color: UIColor.white)
        drawCircle(col: -2, row: 8, color: UIColor.white)
        drawCircle(col: -1, row: 8, color: UIColor.white)
        drawCircle(col: 0, row: 8, color: UIColor.white)
        drawCircle(col: 1, row: 8, color: UIColor.white)
        drawCircle(col: 2, row: 8, color: UIColor.white)
        drawCircle(col: 3, row: 8, color: UIColor.white)
        drawCircle(col: 4, row: 8, color: UIColor.white)
        
        drawCircle2(col: -3, row: 9, color: UIColor.white)
        drawCircle2(col: -2, row: 9, color: UIColor.white)
        drawCircle2(col: -1, row: 9, color: UIColor.white)
        drawCircle2(col: 0, row: 9, color: UIColor.white)
        drawCircle2(col: 1, row: 9, color: UIColor.white)
        drawCircle2(col: 2, row: 9, color: UIColor.white)
        drawCircle2(col: 3, row: 9, color: UIColor.white)
        drawCircle2(col: 4, row: 9, color: UIColor.white)
        
        drawCircle(col: -3, row: 10, color: UIColor.white)
        drawCircle(col: -2, row: 10, color: UIColor.white)
        drawCircle(col: -1, row: 10, color: UIColor.white)
        drawCircle(col: 0, row: 10, color: UIColor.white)
        drawCircle(col: 1, row: 10, color: UIColor.white)
        drawCircle(col: 2, row: 10, color: UIColor.white)
        drawCircle(col: 3, row: 10, color: UIColor.white)
        

        drawCircle2(col: -2, row: 11, color: UIColor.white)
        drawCircle2(col: -1, row: 11, color: UIColor.white)
        drawCircle2(col: 0, row: 11, color: UIColor.white)
        drawCircle2(col: 1, row: 11, color: UIColor.white)
        drawCircle2(col: 2, row: 11, color: UIColor.white)
        drawCircle2(col: 3, row: 11, color: UIColor.white)
        
        drawCircle(col: -2, row: 12, color: UIColor.white)
        drawCircle(col: -1, row: 12, color: UIColor.white)
        drawCircle(col: 0, row: 12, color: UIColor.white)
        drawCircle(col: 1, row: 12, color: UIColor.white)
        drawCircle(col: 2, row: 12, color: UIColor.white)
        
        drawCircle2(col: -1, row: 13, color: UIColor.red)
        drawCircle2(col: 0, row: 13, color: UIColor.red)
        drawCircle2(col: 1, row: 13, color: UIColor.red)
        drawCircle2(col: 2, row: 13, color: UIColor.red)

        drawCircle(col: -1, row: 14, color: UIColor.red)
        drawCircle(col: 0, row: 14, color: UIColor.red)
        drawCircle(col: 1, row: 14, color: UIColor.red)
        
        drawCircle2(col: 0, row: 15, color: UIColor.red)
        drawCircle2(col: 1, row: 15, color: UIColor.red)
        
        drawCircle(col: 0, row: 16, color: UIColor.red)
        
        
        
        




        
        
        
        
    }
    func drawCircle(col: Int, row: Int, color: UIColor ) {
        let path = UIBezierPath(ovalIn: CGRect(x: originX + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
    }
    func drawCircle2(col: Int, row: Int, color: UIColor ) {
        let path = UIBezierPath(ovalIn: CGRect(x: originX - 14 + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
        
        
    }

}
