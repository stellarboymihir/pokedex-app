import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/bloc/pokemon_bloc.dart';
import 'package:pokedex_app/bloc/pokemon_event.dart';
import 'package:pokedex_app/pokedex_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        primaryColor: Colors.red,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.redAccent),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  PokemonBloc()..add(PokemonPageRequest(page: 0))),
        ],
        child: const PokedexView(),
      ),
    );
  }
}
