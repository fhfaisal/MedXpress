import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class SearchAndFilterSection extends StatelessWidget {
  const SearchAndFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
            child: TapRegion(
              onTapOutside: (event) => FocusScope.of(context).requestFocus(FocusNode()),
              child: const SearchBar(
                controller: null,
                hintText: 'Medicine Search',
              ),
            )),
        const SizedBox(width: AppSizes.spaceBtwItems),
        ElevatedButton(
          onPressed: () {},
          child: const Icon(FontAwesomeIcons.filter),
        )
      ],
    );
  }
}