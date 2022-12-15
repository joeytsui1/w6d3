# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ApplicationRecord.transaction do

    puts "Destroying Table Entries..."
    ArtworkShare.destroy_all # belongs to Yips and Users
    Artwork.destroy_all # belongs to Users
    User.destroy_all # can exist on its own

    puts "Resetting primary keys..."
    ApplicationRecord.connection.reset_pk_sequence!("users")
    ApplicationRecord.connection.reset_pk_sequence!("artwork_shares")
    ApplicationRecord.connection.reset_pk_sequence!("artworks")

    elliot = User.create!(username: "all_knowing_elliot")
    ryan = User.create!(username: "will_climb_rocks")
    dean = User.create!(username: "dean_machine")
    angela = User.create!(username: "loves_capy")
    charlos = User.create!(username: "charlos_gets_buckets")
    alissa = User.create!(username: "cow_luva")
    joe = User.create!(username: "trader_joes_4lyf3")
    walker = User.create!(username: "wakka_wakka")
    mike = User.create!(username: "like_mike")
    michelle = User.create!(username: "michelle_bell")
    vanessa = User.create!(username: "the_vanessa")
    jen = User.create!(username: "jen_ken_intensifies")

    artwork1 = Artwork.create!(artist_id: walker.id, title: "The work", image_url: "walkerthework@gmail.com")
    artwork2 = Artwork.create!(artist_id: alissa.id, title: "The work", image_url: "alissathework@gmail.com")
    artwork3 = Artwork.create!(artist_id: dean.id, title: "Souuuurr", image_url: "sour@gmail.com")
    artwork4 = Artwork.create!(artist_id: michelle.id, title: "Sweeeeeet", image_url: "sweet@gmail.com")
    artwork5 = Artwork.create!(artist_id: mike.id, title: "Bitttteerrr", image_url: "bitter@gmail.com")
    artwork6 = Artwork.create!(artist_id: vanessa.id, title: "I am not Michelle.", image_url: "michelle@gmail.com")
    artwork7 = Artwork.create!(artist_id: jen.id, title: "Spiccyyyy", image_url: "spicy@gmail.com")
    artwork8 = Artwork.create!(artist_id: walker.id, title: "Sky", image_url: "skywalker@gmail.com")
    artwork9 = Artwork.create!(artist_id: walker.id, title: "Paul", image_url: "paulwalker@gmail.com")
    artwork10 = Artwork.create!(artist_id: joe.id, title: "Mama", image_url: "joemama@gmail.com")

    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork4.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork5.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork6.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork7.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork8.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork9.id)
    ArtworkShare.create!(viewer_id: walker.id, artwork_id: artwork10.id)

    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork6.id)
    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork7.id)
    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork8.id)
    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork9.id)
    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork4.id)
    ArtworkShare.create!(viewer_id: michelle.id, artwork_id: artwork10.id)

    ArtworkShare.create!(viewer_id: mike.id, artwork_id: artwork4.id)
    ArtworkShare.create!(viewer_id: mike.id, artwork_id: artwork5.id)
    ArtworkShare.create!(viewer_id: mike.id, artwork_id: artwork6.id)

    ArtworkShare.create!(viewer_id: jen.id, artwork_id: artwork5.id)
    ArtworkShare.create!(viewer_id: jen.id, artwork_id: artwork6.id)
    ArtworkShare.create!(viewer_id: jen.id, artwork_id: artwork10.id)


    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork1.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork4.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork5.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork6.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork7.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork8.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork9.id)
    ArtworkShare.create!(viewer_id: vanessa.id, artwork_id: artwork10.id)

end