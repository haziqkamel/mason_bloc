enum {{feature_name.pascalCase()}}Status { all, active, completed }

extension {{feature_name.pascalCase()}}StatusX on {{feature_name.pascalCase()}}Status {
  String get name {
    switch (this) {
      case {{feature_name.pascalCase()}}Status.all:
        return 'All';
      case {{feature_name.pascalCase()}}Status.active:
        return 'Active';
      case {{feature_name.pascalCase()}}Status.completed:
        return 'Completed';
      default:
        return '';
    }
  }
}