import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sudoku/src/sudoku/model/sudoku_board.dart';

part 'sudoku_view_model.freezed.dart';

@freezed
sealed class SudokuViewModel with _$SudokuViewModel {
  const factory SudokuViewModel({
    required SudokuBoard sudokuBoard,
  }) = _SudokuViewModel;
}