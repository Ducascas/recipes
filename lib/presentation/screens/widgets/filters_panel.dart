import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';

class FiltersPanel extends StatefulWidget {
  const FiltersPanel({super.key});

  @override
  State<FiltersPanel> createState() => _FiltersPanelState();
}

class _FiltersPanelState extends State<FiltersPanel> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: Row(
              children: [
                Text(
                  "Фильтры",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor,
                  ),
                ),

                const SizedBox(width: 6),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),

          AnimatedCrossFade(
            firstChild: const SizedBox.shrink(),
            secondChild: _FiltersBody(),
            duration: const Duration(milliseconds: 250),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }
}

class _FiltersBody extends StatelessWidget {
  const _FiltersBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_RadioGroupImage(), _PrepTimeTextField()],
    );
  }
}

class _RadioGroupImage extends StatelessWidget {
  const _RadioGroupImage();

  @override
  Widget build(BuildContext context) {
    final filter = context.watch<FilterCubit>().state;
    return RadioGroup<ImageFilterType?>(
      groupValue: filter.imageType,
      onChanged: (type) => context.read<FilterCubit>().selectImageFilter(type),
      child: Column(
        children: [
          RadioListTile<ImageFilterType?>(
            value: ImageFilterType.withImage,
            title: const Text('С картинкой'),
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<ImageFilterType?>(
            value: ImageFilterType.withoutImage,
            title: const Text('Без картинки'),
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _PrepTimeTextField extends StatelessWidget {
  const _PrepTimeTextField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        spacing: 10,
        children: [
          const Text("Время приготовления до:"),
          SizedBox(
            width: 60,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) =>
                  context.read<FilterCubit>().setMaxMinutes(value),
            ),
          ),
          const Text("минут"),
        ],
      ),
    );
  }
}
