
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
  final List<int> _values;

  const SudokuBoard(this._size, this._values);

  /// returns 0-filled board.
  /// 
  /// the default size is 9.
  factory SudokuBoard.empty({int size = 9}) {
    return SudokuBoard(
      size,
      List.generate(size * size, (_) => 0),
    );
  }
  
  int get size => _size;
  List<int> get values => _values;

  SudokuBoard copyWith({
    int? size,
    List<int>? values,
  }) {
    return SudokuBoard(
      size ?? _size,
      values ?? _values,
    );
  }
}

extension TmpSudokuBoardFunc on SudokuBoard {
  List<int> increment(int index) {
    values[index] += 1;
    return values;
  }
}
