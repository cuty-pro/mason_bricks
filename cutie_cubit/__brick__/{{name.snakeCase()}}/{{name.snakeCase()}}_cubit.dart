import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super(const {{name.pascalCase()}}State());

  Future<void> load{{name.snackeCase()}}() async {
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
