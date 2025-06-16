

import 'package:finalyst/features/domain/repositories/{{feature_name.snakeCase()}}/{{feature_name.snakeCase()}}_repository.dart';
import 'package:finalyst/features/domain/usecases/interface/{{feature_name.snakeCase()}}/{{feature_name.snakeCase()}}_usecase.dart';


// TODO: Match actual bloc requirements from current test code

class {{feature_name.pascalCase()}}UsecaseImpl implements {{feature_name.pascalCase()}}Usecase {
  final {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;

  {{feature_name.pascalCase()}}UsecaseImpl({required this.{{feature_name.camelCase()}}Repository});

  @override
  Future<List<{{feature_name.pascalCase()}}>> get{{feature_name.pascalCase()}}s({required int clientId}) {
    return {{feature_name.camelCase()}}Repository.get{{feature_name.pascalCase()}}s(clientId: clientId);
  }

  @override
  Future<void> update{{feature_name.pascalCase()}}State({required int {{feature_name.camelCase()}}Id}) {
    return {{feature_name.camelCase()}}Repository.update{{feature_name.pascalCase()}}State({{feature_name.camelCase()}}Id: {{feature_name.camelCase()}}Id);
  }
}
