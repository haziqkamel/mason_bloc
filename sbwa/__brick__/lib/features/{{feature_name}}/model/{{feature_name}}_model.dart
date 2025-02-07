enum {{feature_name.pascalCase()}}Status { all, active, completed }

extension {{feature_name.pascalCase()}}StatusX on {{feature_name.pascalCase()}}Status {
  bool get isAll => this == {{feature_name.pascalCase()}}Status.all;
  bool get isActive => this == {{feature_name.pascalCase()}}Status.active;
  bool get isCompleted => this == {{feature_name.pascalCase()}}Status.completed;
}