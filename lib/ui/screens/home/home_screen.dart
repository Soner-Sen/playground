import 'package:fhirfun/ui/baseWidgets/centered_constrained_wrapper.dart';
import 'package:fhirfun/ui/screens/home/widgets/multiplatform.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF0B6623),
                Color(0xFF3f704d),
                Color(0xFF00755E),
                Color(0xFF004b49),
                Color(0xFF3b7a57),
                Color(0xFF29AB87),
              ],
            ),
          ),
        ),
        const ForegroundWidget(),
      ],
    );
  }
}

class ForegroundWidget extends StatelessWidget {
  const ForegroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partBlocks = [
      const SizedBox(height: 20),
      const CenteredConstrainedWrapper(child: MultiPlatform())
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 5,
          leading: IconButton(
            icon: const Icon(Icons.handshake_sharp),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://papik.pro/en/uploads/posts/2022-06/1655848165_12-papik-pro-p-cool-avatar-pictures-for-guys-13.jpg'),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.pink, fontSize: 20),
            child: ListView.builder(
              itemCount: partBlocks.length,
              itemBuilder: (context, index) {
                return partBlocks[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}
