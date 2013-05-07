# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  { name: "Camera", slug: "cameras" },
  { name: "Lens", slug: "lenses" }
]

items = [
  { category_id: 1, name: "Old School F Nikon", photo_url: "http://media.treehugger.com/assets/images/2011/10/nilon20f-thumb.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 1, name: "RCA Camcorder", photo_url: "http://th03.deviantart.net/fs71/PRE/f/2012/365/8/e/1986_rca_pro_wonder_vhs_camcorder_by_tikikah_the_phoenix-d5pvh9r.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 1, name: "EOS Rebel T2i", photo_url: "http://www.2dayblog.com/images/2010/february/t2i_1.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 1, name: "Lomokino Super 35mm", photo_url: "http://www.ubergizmo.com/wp-content/uploads/2011/11/17-LomoKino-Super-35.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 2, name: "Canon 85mm Lens", photo_url: "http://ec1.images-amazon.com/images/I/41FER7HPR7L.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 2, name: "Canon 35mm Lens", photo_url: "http://images04.olx.in/ui/13/04/88/1360851377_482469688_1-Pictures-of--Canon-DSLR-Lens-18-55mm.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 },
  { category_id: 2, name: "Fake Lens", photo_url: "http://2.bp.blogspot.com/-MwIlpDCqbX0/TmIjim9nYjI/AAAAAAAAACo/PDIpIiFqzEM/s1600/camera-lens-icon.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100 }
]

categories.each do |category|
  c = Category.new
  c.name = category[:name]
  c.slug = category[:slug]
  c.save
end

items.shuffle.each do |item|
  i = Item.new
  i.category_id = item[:category_id]
  i.name = item[:name]
  i.photo_url = item[:photo_url]
  i.description = item[:description]
  i.daily_price = item[:daily_price]
  i.weekly_price = item[:weekly_price]
  i.monthly_price = item[:monthly_price]
  i.save
end

puts "#{Category.count} Categories in your database!"
puts "#{Item.count} Items in your database!"
