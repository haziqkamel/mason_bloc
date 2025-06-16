import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part '{{feature_name}}_event.dart';
part '{{feature_name}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {

  {{feature_name.pascalCase()}}Bloc(  
  ) : super(const {{feature_name.pascalCase()}}State()) {
    on<{{feature_name.pascalCase()}}SubcriptionRequested>(_on{{feature_name.pascalCase()}}SubcriptionRequested);
  }

  void _on{{feature_name.pascalCase()}}SubcriptionRequested({{feature_name.pascalCase()}}SubcriptionRequested event, Emitter<{{feature_name.pascalCase()}}State> emit) {
    emit(state.copyWith(status: () => {{feature_name.pascalCase()}}Status.loading));
    try {
      // final response = await _repositoryName.{{feature_name.camelCase()}}();
      emit(state.copyWith(status: () => {{feature_name.pascalCase()}}Status.success));
    } catch (e) {
      emit(state.copyWith(status: () => {{feature_name.pascalCase()}}Status.failure));
    }
  }
}