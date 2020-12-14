String urlPokemonBuilder( int num ) {
  return "https://assets.pokemon.com/assets/cms2/img/pokedex/full/${ ajuste(num) }.png";
}

String ajuste( int num ){
  if ( num < 10 )
    return "00$num";
  else if ( num < 100 )
    return "0$num";
  else
    return "$num";
} 