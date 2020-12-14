class Quote {

  String text;
  String author;


//  Quote( String text, String author ) {
//    this.text = text;
//    this.author = author;
//  }

  // Named Parameters - that's a new way to make a constructor
  Quote( { this.text, this.author } );


}