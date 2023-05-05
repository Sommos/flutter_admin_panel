import 'package:admin_panel/controllers/menu_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        if(!Responsive.isMobile(context))
          Text(
            "Dashboard", 
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      // add a padding to the container
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),  
      // add a decoration to the container
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          // add an image asset
          Image.asset(
            "assets/images/profile_pic.png", 
            height: 38.0,
          ),
          if(!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Emily Russel"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // input text box with a hint text of "Search"
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        // remove the border
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // add a suffix icon using InkWell (InkWell is a widget that responds to taps with a visual animation)
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            // add a decoration to the container
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            // add an svg icon to the container
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}