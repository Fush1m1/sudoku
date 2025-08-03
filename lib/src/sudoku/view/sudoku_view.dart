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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: _SudokuGrid(sudokuBoard, ref.read(sudokuProvider.notifier).increment),
            ),
            const _LeftAlignedFittedText("任意の縦列に1~9までの数字が1つずつ入力されていること"),
            const _LeftAlignedFittedText("任意の横列に1~9までの数字が1つずつ入力されていること"),
            const _LeftAlignedFittedText("3x3のサブグリッドそれぞれに1~9までの数字が1つずつ入力されていること"),
          ],
        ),
      ),
    );
  }
}

class _SudokuGrid extends StatelessWidget {
  const _SudokuGrid(this.sudokuBoard, this.onTap);

  final SudokuBoard sudokuBoard;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final size = sudokuBoard.size;
    return GridView.count(
      crossAxisCount: size,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        size * size,
        (index) => GestureDetector(
          onTap: () => onTap(index),
          child: Container(
            margin: const EdgeInsets.all(4),
            color: Colors.blueAccent,
            child: Center(
              child: Text('${sudokuBoard.values[index]}'),
            ),
          ),
        ),
      ),
    );
  }
}

class _LeftAlignedFittedText extends StatelessWidget {
  const _LeftAlignedFittedText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(child: Text(text)),
    );
  }
}