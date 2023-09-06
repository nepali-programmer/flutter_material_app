import 'package:flutter/material.dart';
import 'package:flutter_material_app/constant/app_dimension.dart';
import 'package:flutter_material_app/widget/home_section/form_field/app_form_field.dart';
import 'package:flutter_material_app/widget/home_section/switch/app_switch.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Text(
        'Text Field',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const AppFormField.underlined(),
      const AppFormField.outlined(),
      Text(
        'Loader',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Row(
        children: [
          const CircularProgressIndicator(),
          SizedBox(width: AppDimension.large),
          const Expanded(child: LinearProgressIndicator()),
        ],
      ),
      Text(
        'Elevated Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Wrap(
        spacing: AppDimension.large,
        runSpacing: AppDimension.large,
        children: [
          ElevatedButton(
            child: const Text('Elevated Button'),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.favorite),
            label: const Text('Elevated Button'),
            onPressed: () {},
          ),
        ],
      ),
      Text(
        'Outlined Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Wrap(
        spacing: AppDimension.large,
        runSpacing: AppDimension.large,
        children: [
          OutlinedButton(
            child: const Text('Outlined Button'),
            onPressed: () {},
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.favorite),
            label: const Text('Outlined Button'),
            onPressed: () {},
          ),
        ],
      ),
      Text(
        'Text Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Wrap(
        spacing: AppDimension.large,
        runSpacing: AppDimension.large,
        children: [
          TextButton(
            child: const Text('Text Button'),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: const Icon(Icons.favorite),
            label: const Text('Text Button'),
            onPressed: () {},
          ),
        ],
      ),
      Text(
        'Icon Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Wrap(
        spacing: AppDimension.large,
        runSpacing: AppDimension.large,
        children: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton.filled(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton.filledTonal(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton.outlined(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      Text(
        'Floating Action Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Wrap(
        spacing: AppDimension.large,
        runSpacing: AppDimension.large,
        children: [
          FloatingActionButton.small(
            child: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          FloatingActionButton(
            child: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          FloatingActionButton.large(
            child: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            icon: const Icon(Icons.favorite),
            label: const Text('Floating Action Button'),
            onPressed: () {},
          ),
        ],
      ),
      Text(
        'Segmented Button',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      AppSegmentedButton(),
      Text(
        'Switch',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const Align(
        alignment: Alignment.centerLeft,
        child: AppSwitch(),
      ),
    ];
    return ListView.separated(
      padding: EdgeInsets.all(AppDimension.normal),
      itemCount: children.length,
      separatorBuilder: (context, index) {
        return SizedBox(height: AppDimension.large);
      },
      itemBuilder: (context, index) {
        return children[index];
      },
    );
  }
}
