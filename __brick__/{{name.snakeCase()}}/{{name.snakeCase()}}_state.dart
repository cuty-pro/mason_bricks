part of '{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();

  @override
  List<Object?> get props => [];
}

class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {
  const {{name.pascalCase()}}Loading();
}

class {{name.pascalCase()}}Loaded extends {{name.pascalCase()}}State {
  const {{name.pascalCase()}}Loaded();

  @override
  List<Object?> get props => [];
}

class {{name.pascalCase()}}LoadingFailure extends {{name.pascalCase()}}State {
  const {{name.pascalCase()}}LoadingFailure(this.exception);

  final Object exception;

  @override
  List<Object?> get props => super.props..add(exception);
}
