//
//  GameDelegate.swift
//  Avance1
//
//  Created by user223065 on 11/17/22.
//

import Foundation

protocol GameDelegate {
    func movePiece(fromCol: Int, fromRow: Int, toCol:Int, toRow:Int)
    func pieceAt(col:Int,row:Int) -> GamePiece?
}
