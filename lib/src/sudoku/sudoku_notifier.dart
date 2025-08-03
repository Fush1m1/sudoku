import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sudoku/src/sudoku/model/sudoku_board.dart';
import 'package:sudoku/src/sudoku/view_model/sudoku_view_model.dart';

final sudokuProvider = NotifierProvider<SudokuNotifier, SudokuViewModel>(() {
  return SudokuNotifier();
});

class SudokuNotifier extends Notifier<SudokuViewModel>{
  @override
  SudokuViewModel build() {
    return SudokuViewModel(sudokuBoard: SudokuBoard.empty());
  }

  void increment(int index) {
    final newSudokuBoard = state.sudokuBoard.copyWith(
      size: state.sudokuBoard.size,
      values: state.sudokuBoard.increment(index),
    );
    state = state.copyWith(
      sudokuBoard: newSudokuBoard,
    );
  }
}