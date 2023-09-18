import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<Load{{name.pascalCase()}}>(_load{{name.snackeCase()}});
  }

  Future<void> _load{{name.snackeCase()}}(
    Load{{name.pascalCase()}} event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    try {
      if (state is! {{name.pascalCase()}}Loaded) {
        emit(const {{name.pascalCase()}}Loading());
      }
      //TODO: write your logic here...
      emit(const {{name.pascalCase()}}Loaded());
    } catch (e, st) {
      emit({{name.pascalCase()}}LoadingFailure(e));
      //TODO: handle error
    }
  }
}
