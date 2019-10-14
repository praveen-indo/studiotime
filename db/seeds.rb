# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


studio_types = ['Rehearsal Space', 'Podcast Space', 'Home Studio', 'Mid-Level Studio', 'Top-Line Studio']
studio_types.each do |studio_type|
  StudioType.create(name: studio_type)
end
