import 'package:sudoku/src/sudoku/model/sudoku_board.dart';
import 'package:sudoku/src/sudoku/view_model/sudoku_view_model.dart';
import 'package:test/test.dart';
  
void main() {
  final example = [
    7,2,5,6,8,1,9,3,4,
    3,4,9,7,2,5,6,8,1,
    8,6,1,3,4,9,7,2,5,
    6,9,2,1,3,8,4,5,7,
    5,8,3,4,9,7,1,6,2,
    4,1,7,5,6,2,8,9,3,
    2,7,8,9,5,4,3,1,6,
    1,5,6,8,7,3,2,4,9,
    9,3,4,2,1,6,5,7,8,
  ];
  final state = SudokuBoard.empty().copyWith(values: example);
  final vm = SudokuViewModel(sudokuBoard: state);
test('任意の縦列に1~9までの数字が1つずつ入力されていること', () {
  final size = vm.sudokuBoard.size;
  final values = vm.sudokuBoard.values;

  // 各列に対して処理
  List.generate(size, (x) {
    final column = List.generate(size, (y) => values[size * y + x]);
    column.sort();
    final expected = List.generate(9, (i) => i+1);
    expect(column, expected);
  });
});

  test('任意の横列に1~9までの数字が1つずつ入力されていること', () {});
  test('3x3のサブグリッドそれぞれに1~9までの数字が1つずつ入力されていること', () {});
}