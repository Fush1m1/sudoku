import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sudoku/src/sudoku/model/sudoku_board.dart';
import 'package:sudoku/src/sudoku/sudoku_notifier.dart';

class SudokuView extends ConsumerWidget {
  const SudokuView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sudokuBoard = ref.watch(sudokuProvider).sudokuBoard;

    return Scaffold(
      appBar: AppBar(title: const Text('Sudoku Board')),
      body: Column(
        children: [
          _SudokuTableArea(sudokuBoard),
          ElevatedButton(
            onPressed: () {
              ref.read(sudokuProvider.notifier).incrementTheFirstCell();
            },
            child: const Text('Increment [0][0]'),
          ),
        ],
      ),
    );
  }
}

class _SudokuTableArea extends StatelessWidget {
  const _SudokuTableArea(this.sudokuBoard);

  final SudokuBoard sudokuBoard;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: sudokuBoard.values.map((row) {
        return TableRow(
          children: row.map((value) {
            return Text(value.toString());
          }).toList(),
        );
      }).toList(),
    );
  }
}