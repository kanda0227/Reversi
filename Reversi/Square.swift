//
//  Square.swift
//  Reversi
//
//  Created by Kanda Sena on 2017/11/14.
//

import Foundation

internal struct Square {
    
    /// 現在のマスの状態
    var state: State
    /// 次にこのマスに対して取れる行動
    var canNext: CanNext
}

/// それぞれのマス目の状態
internal enum State {
    
    /// 何も置いていない
    case none
    /// 黒が置いてある
    case black
    /// 白が置いてある
    case white
}

/// 次にこのマスに対して取れる行動
// TODO: 型名をどうにかして
internal enum CanNext {
    /// 何もできない
    case cant
    /// 黒は置ける
    case onlyBlack
    /// 白は置ける
    case onlyWhite
    /// 白も黒も置ける
    case blackAndWhite
}
