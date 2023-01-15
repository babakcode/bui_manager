import 'package:bui_managers/ui/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff616a7e),
      //
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                'BUI',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .06,),
              const AppListTile(title: 'Projects', icon: Icon(Icons.copy_all_rounded)),
              const SizedBox(
                height: 10,
              ),
              const AppListTile(title: 'GitHub', icon: Icon(Icons.share_rounded)),
              const SizedBox(
                height: 10,
              ),

              const AppListTile(title: 'Profile', icon: Icon(Icons.person_rounded)),
              const SizedBox(
                height: 10,
              ),
              const AppListTile(title: 'Sign out', icon: Icon(Icons.exit_to_app_rounded)),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
