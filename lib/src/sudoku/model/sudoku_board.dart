
import 'package:flutter/material.dart';

/// Board area
/// 
///   [
///     1, 2, 3,
///     4, 5, 6,
///     7, 8, 9 
///   ]
@immutable
class SudokuBoard {
  final int _size;
  final List<List<int>> _values;

  const SudokuBoard(this._size, this._values);

  /// returns 0-filled board.
  factory SudokuBoard.empty({required int size}) {
    return SudokuBoard(
      size,
      List.generate(size, (_) => List.filled(size, 0)),
    );
  }
  
  int get size => _size;
  List<List<int>> get values => _values;

  SudokuBoard copyWith({
    int? size,
    List<List<int>>? values,
  }) {
    return SudokuBoard(
      size ?? _size,
      values ?? _values,
    );
  }
}

extension TmpSudokuBoardFunc on SudokuBoard {
  /// increments [0][0]
  /// 
  /// TODO: delete me.
  List<List<int>> incrementFirstFirst() {
    if (values.isNotEmpty && values.first.isNotEmpty) {
      values[0][0] += 1;
    }
    return values;
  }
}
