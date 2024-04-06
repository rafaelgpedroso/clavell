import 'package:clavell/helpers/routes.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final selected = Routes.selected(context);

    return NavigationBar(
      selectedIndex: selected,
      onDestinationSelected: (destination) {
        switch (Routes.change(selected, destination)) {
          case RouteStatus.reset:
            Navigator.pop(context);
            break;
          case RouteStatus.newOne:
            Navigator.of(context).pushNamed(Routes.get(destination));
            break;
          case RouteStatus.replace:
            Navigator.of(context).pushReplacementNamed(Routes.get(destination));
            break;
          case RouteStatus.unchanged:
            break;
        }
      },
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: 'Conta',
        ),
        NavigationDestination(
          icon: Icon(Icons.credit_card_outlined),
          label: 'Cartão',
        ),
        NavigationDestination(
          icon: Icon(Icons.payments_outlined),
          label: 'Transações',
        ),
      ],
    );
  }
}
