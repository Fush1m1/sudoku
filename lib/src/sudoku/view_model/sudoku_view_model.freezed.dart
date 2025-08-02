// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sudoku_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SudokuViewModel implements DiagnosticableTreeMixin {
  SudokuBoard get sudokuBoard;

  /// Create a copy of SudokuViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SudokuViewModelCopyWith<SudokuViewModel> get copyWith =>
      _$SudokuViewModelCopyWithImpl<SudokuViewModel>(
          this as SudokuViewModel, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SudokuViewModel'))
      ..add(DiagnosticsProperty('sudokuBoard', sudokuBoard));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SudokuViewModel &&
            (identical(other.sudokuBoard, sudokuBoard) ||
                other.sudokuBoard == sudokuBoard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sudokuBoard);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SudokuViewModel(sudokuBoard: $sudokuBoard)';
  }
}

/// @nodoc
abstract mixin class $SudokuViewModelCopyWith<$Res> {
  factory $SudokuViewModelCopyWith(
          SudokuViewModel value, $Res Function(SudokuViewModel) _then) =
      _$SudokuViewModelCopyWithImpl;
  @useResult
  $Res call({SudokuBoard sudokuBoard});
}

/// @nodoc
class _$SudokuViewModelCopyWithImpl<$Res>
    implements $SudokuViewModelCopyWith<$Res> {
  _$SudokuViewModelCopyWithImpl(this._self, this._then);

  final SudokuViewModel _self;
  final $Res Function(SudokuViewModel) _then;

  /// Create a copy of SudokuViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sudokuBoard = null,
  }) {
    return _then(_self.copyWith(
      sudokuBoard: null == sudokuBoard
          ? _self.sudokuBoard
          : sudokuBoard // ignore: cast_nullable_to_non_nullable
              as SudokuBoard,
    ));
  }
}

/// Adds pattern-matching-related methods to [SudokuViewModel].
extension SudokuViewModelPatterns on SudokuViewModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SudokuViewModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SudokuViewModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SudokuViewModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SudokuBoard sudokuBoard)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel() when $default != null:
        return $default(_that.sudokuBoard);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SudokuBoard sudokuBoard) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel():
        return $default(_that.sudokuBoard);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SudokuBoard sudokuBoard)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SudokuViewModel() when $default != null:
        return $default(_that.sudokuBoard);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SudokuViewModel with DiagnosticableTreeMixin implements SudokuViewModel {
  const _SudokuViewModel({required this.sudokuBoard});

  @override
  final SudokuBoard sudokuBoard;

  /// Create a copy of SudokuViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SudokuViewModelCopyWith<_SudokuViewModel> get copyWith =>
      __$SudokuViewModelCopyWithImpl<_SudokuViewModel>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SudokuViewModel'))
      ..add(DiagnosticsProperty('sudokuBoard', sudokuBoard));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SudokuViewModel &&
            (identical(other.sudokuBoard, sudokuBoard) ||
                other.sudokuBoard == sudokuBoard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sudokuBoard);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SudokuViewModel(sudokuBoard: $sudokuBoard)';
  }
}

/// @nodoc
abstract mixin class _$SudokuViewModelCopyWith<$Res>
    implements $SudokuViewModelCopyWith<$Res> {
  factory _$SudokuViewModelCopyWith(
          _SudokuViewModel value, $Res Function(_SudokuViewModel) _then) =
      __$SudokuViewModelCopyWithImpl;
  @override
  @useResult
  $Res call({SudokuBoard sudokuBoard});
}

/// @nodoc
class __$SudokuViewModelCopyWithImpl<$Res>
    implements _$SudokuViewModelCopyWith<$Res> {
  __$SudokuViewModelCopyWithImpl(this._self, this._then);

  final _SudokuViewModel _self;
  final $Res Function(_SudokuViewModel) _then;

  /// Create a copy of SudokuViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sudokuBoard = null,
  }) {
    return _then(_SudokuViewModel(
      sudokuBoard: null == sudokuBoard
          ? _self.sudokuBoard
          : sudokuBoard // ignore: cast_nullable_to_non_nullable
              as SudokuBoard,
    ));
  }
}

// dart format on
