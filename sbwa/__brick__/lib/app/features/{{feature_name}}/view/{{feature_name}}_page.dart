import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO: Match actual bloc requirements from current test code
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Bloc(
      )..add(const {{feature_name.pascalCase()}}SubcriptionRequested()),
      child: const {{feature_name.pascalCase()}}View(),
    );
  }
}

class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;

  return Scaffold(
      appBar: AppBar(
      title: Text('{{feature_name}}'),
      ),
      body: BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
        builder: (context, state) {
          // if (state.status == {{feature_name.pascalCase()}}Status.loading) {
          //   return const Center(child: CircularProgressIndicator());
          // } else {
          //   return Center(child: Text('Empty'));
          // }

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: const SizedBox(),
              ),
            ],
          );
        },
      ),
    ); 
  }
}