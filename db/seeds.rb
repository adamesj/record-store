Category.delete_all
Album.delete_all

hip_hop = Category.create(name: 'Hip-Hop')
indie = Category.create(name: 'Indie')


Album.create(
  title: 'Madvilliany',
  description: 'Madvillainy is the debut album by American hip hop duo Madvillain,
  a group consisting of MF Doom (MC) and Madlib (producer). It was released on March 23, 2004,
  on Stones Throw Records.',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Madvillainy_cover.png',
  price: 8.99,
  category_id: hip_hop.id
)

Album.create(
  title: 'Because the Internet',
  description: 'Because the Internet is the second studio album by American
  rapper Donald Glover, under the stage name Childish Gambino.
  It was released on December 10, 2013, by Glassnote Records and Island Records',
  image_url: 'https://www.newzikstreet.com/wp-content/uploads/2013/12/85ka.jpg',
  price: 8.99,
  category_id: hip_hop.id
)

Album.create(
  title: 'Born to Die',
  description: 'Born to Die is the second studio album and major label debut by American singer-songwriter Lana Del Rey.
  It was released on January 27, 2012 by Interscope Records, Polydor Records and Stranger Records.',
  image_url: 'https://images-na.ssl-images-amazon.com/images/I/71v9YKQxm2L._SL1400_.jpg',
  price: 8.99,
  category_id: indie.id
)