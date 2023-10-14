import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    Key? key, required this.location, required this.dateTime,
  }) : super(key: key);

  final String location;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      iconTheme: Theme.of(context).iconTheme,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(location,style: const TextStyle(
            color: Colors.white,
            fontSize: 22
          ),),
          const SizedBox(
            height: 8,
          ),
          Text(dateTime,style: const TextStyle(
              color: Colors.white,
              fontSize: 16
          ),),
        ],
      ),
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
