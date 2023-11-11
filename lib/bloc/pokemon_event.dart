abstract class PokemonEvent {
  int? get page => null;
}

class PokemonPageRequest extends PokemonEvent {
  @override
  final int page;

  PokemonPageRequest({required this.page});
}
