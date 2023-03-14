import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/landScape.png')),
        // Titulo
        const Title(),
        // Botones
        const ButtonSection(),
        // Descripción
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
              'Fugiat quis cupidatat duis quis enim. Dolore duis incididunt do sunt. Adipisicing do veniam enim laborum. Voluptate proident laborum laboris ex ipsum nostrud occaecat nostrud amet irure ut magna. Exercitation ullamco excepteur anim pariatur quis enim laboris amet ad excepteur qui pariatur exercitation commodo. Aliquip esse culpa enim aliqua magna. Amet sint elit ullamco magna esse ea irure exercitation id eu sit deserunt. Velit veniam dolore sit non anim excepteur voluptate labore aliqua irure occaecat mollit do. Veniam qui pariatur irure esse. Cillum est laboris magna dolor ut cupidatat cillum labore enim commodo.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            // Alineación horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campgroung',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          // Crea un espacio para separar los iconos del texto
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.navigation, text: 'Routes'),
          CustomButton(icon: Icons.share, text: 'Share')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}
