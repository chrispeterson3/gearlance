# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u = User.new
u.email = "gearlanceapp@gmail.com"
u.first_name = "Gear"
u.last_name = "Lance"
u.city = "Chicago"
u.state = "IL"
u.password = "gearlance"
u.password_confirmation = "gearlance"
u.admin = true
u.save

Category.destroy_all
categories = [
  { name: "Camera", slug: "cameras" },
  { name: "Lens", slug: "lenses" },
  { name: "Lights", slug: "lights" },
  { name: "Other", slug: "other" }
]

categories.each do |category|
  c = Category.new
  c.name = category[:name]
  c.slug = category[:slug]
  c.save
end

Item.destroy_all
items = [
  { category_id: Category.find_by_name("Camera").id, name: "Old School F Nikon", photo_url: "http://media.treehugger.com/assets/images/2011/10/nilon20f-thumb.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Nikon - D3100 14.2-Megapixel DSLR Camera with 18-55mm VR Lens - Red", photo_url: "http://pisces.bbystatic.com/image2/BestBuy_US/images/products/3099/3099128_sa.jpg;canvasHeight=166;canvasWidth=210", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Canon Powershot SX50 HS 12.1 Megapixel Digital Camera", photo_url: "http://www.42photo.com/images/products/prod_m/107138_m_IMG_272168.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Polaroid Z2300 10-megapixel digital instant camera (White)", photo_url: "http://a248.e.akamai.net/pix.crutchfield.com/ImageHandler/fixedscale/400/300/products/2013/9/146/x146Z2300W-F.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Canon A1400 16MP 5X Optical Zoom Black Digital Camera", photo_url: "http://www.officemax.com/catalog/images/397x353/23937821i_01.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Nikon COOLPIX L820 16MP Digital Camera with 30x Optical Zoom", photo_url: "http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/44/14449457_130307103000.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Nikon Black D3200 Digital SLR Camera", photo_url: "http://i.walmartimages.com/i/p/00/01/82/08/25/0001820825492_60X60.gif", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "RCA Camcorder", photo_url: "http://th03.deviantart.net/fs71/PRE/f/2012/365/8/e/1986_rca_pro_wonder_vhs_camcorder_by_tikikah_the_phoenix-d5pvh9r.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Camera").id, name: "Fake Lens", photo_url: "http://2.bp.blogspot.com/-MwIlpDCqbX0/TmIjim9nYjI/AAAAAAAAACo/PDIpIiFqzEM/s1600/camera-lens-icon.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lights").id, name: "Canon 85mm Lens", photo_url: "http://ec1.images-amazon.com/images/I/41FER7HPR7L.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lights").id, name: "Canon 35mm Lens", photo_url: "http://images04.olx.in/ui/13/04/88/1360851377_482469688_1-Pictures-of--Canon-DSLR-Lens-18-55mm.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lens").id, name: "EOS Rebel T2i", photo_url: "http://www.dansdata.com/images/d60/lenses500.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lens").id, name: "Lomokino Super 35mm", photo_url: "http://www.ubergizmo.com/wp-content/uploads/2011/11/17-LomoKino-Super-35.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
 { category_id: Category.find_by_name("Lens").id, name: "Canon EF 75-300mm f/4-5.6 III Telephoto Zoom Lens", photo_url: "http://s7d5.scene7.com/is/image/Staples/s0133421_sc7?$splssku$", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
 { category_id: Category.find_by_name("Lens").id, name: "Canon EF 70-300mm USM IS Lens", photo_url: "http://www.crutchfield.com.edgesuite.net/pix.crutchfield.com/ImageHandler/fixedscale/900/900/products/2005/280/x28070300iU-f.jpeg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
 { category_id: Category.find_by_name("Lens").id, name: "Canon EF 100-400mm f/4.5-5.6L IS USM", photo_url: "http://overstockdigital.com/ovcat/product_thumb.php?img=images/canon100-400.jpg&w=250&h=161", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
 { category_id: Category.find_by_name("Lens").id, name: "Canon zoom lens", photo_url: "http://webobjects2.cdw.com/is/image/CDW/355656?$product_230$", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
 { category_id: Category.find_by_name("Lens").id, name: "TAMRON AFB008C700 (B008) 18-270mm/F3.5-6.3 Di II VC PZD Lens", photo_url: "http://images17.newegg.com/is/image/newegg/30-995-995-TS?$S300W$", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lens").id, name: "Olloclip iPhone Camera Lens", photo_url: "http://a.tgcdn.net/images/products/frontsquare/eba9_olloclip_iphone_camera_lens.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lens").id, name: "NIKON AF 70-300MM F4-5.6 G", photo_url: "http://used.natcam.com/newused/images/8005/NIKON_AF_70-300MM_F4-5PT6_G.jpg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Lens").id, name: "Canon EF 70-200mm f/4L USM Lens", photo_url: "http://www.crutchfield.com.edgesuite.net/pix.crutchfield.com/ImageHandler/fixedscale/900/900/products/2009/03/280/x28070200L-f.jpeg", description: "Super cool description of item goes here.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Adventura 170 Shoulder Camera Bag - Black", photo_url: "http://snpi.dell.com/snp/images/products/mlrg/A4967169.jpg", description: "The Adventura™ 170 Shoulder Camera Bag from Lowepro® is a protective, lightweight, streamlined bag that’s packed with practical features. The thoughtfully organized shoulder bag has the zippered main compartment which features a quick-release buckle and rainflap lid, offering quick access to contents when bag is unzipped and extra protection when bag is fully closed. This bag comes with removable/adjustable shoulder strap, features a non-slip patch and sturdy snaphooks make connections secure. Plus, inside the fully padded interior, a soft tricot lining provides protection to your camera device and a burnt orange color making it easy to see gear while you work out of the bag. Additionally, the Adventura 170 has a zippered front pocket with memory card storage, padded grab handle and two pleated side pockets. Furthermore its two belt loops provide an added carrying option on the 170 model. With all these and more features, the Adventura 170 Shoulder Bag is the ideal choice for the DSLR or camcorder user, who’s looking for more than just a bag.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Piel Leather 2295 Deluxe Carry All Camera Bag", photo_url: "http://a248.e.akamai.net/origin-cdn.volusion.com/syj5v.zpnx6/v/vspfiles/photos/PI-2295-2T.jpg?1358767622", description: "Flap over, main zip pocket, inside film pocket, and front pocket. Shoulder strap and handle.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Case Logic DCB-309 SLR Camera Backpack (Black)", photo_url: "http://static.bhphoto.com/images/images200x200/871459.jpg", description: "The DCB-309 SLR Camera Backpack from Case Logic may appear compact on the outside but it sure holds its weight in gear. Stash your two DSLR bodies inside-one with a 70-200mm f/2.8 attached. And, there's room left over for two smaller lenses and a flash. Every photographer needs a laptop and this backpack will hold your 15 inch MacBook Pro or a 14 inch PC in a separate, padded zippered compartment. Not enough? Take along your tripod stored neatly within the side zippered pocket. Secure it with the included buckle and you're ready to head out for a day's shoot. Inside the bag, a padded divider system allows you to arrange the interior to accommodate whatever gear you need.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Lowepro Passport Sling II Camera Bag, Black/Red", photo_url: "http://www.adorama.com/images/300x300/LPPPS2BR.jpg", description: "Space for your camera gear and space for your personal gear, that's what you get with the discreet, modern and versatile Lowepro Passport Sling II Camera Bag (Black/Red). A customizable and removable camera box provides protection for a DSLR or CSC kit. Remove the box to use the sling without camera gear - it makes a great travel or day bag.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Crumpler 5 Million Dollar Home Camera Bag", photo_url: "http://l3.zassets.com/images/z/2/2/1/7/5/9/2217590-p-MULTIVIEW.jpg", description: "Whether you're a polished professional or an aspiring amateur, haul all your camera essentials in the 5 Million Dollar Home Camera Bag from Crumpler®. Bag is made from a water-resistant 900D outer, flamed polypropylene webbing and a triple strength S-Bend webbing attachment. Also, the bag includes an injection molded hook-and-loop and bonded nylon thread with bar tack stitching on all stress points.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Pelican™ 1510 Case with Padded Divider", photo_url: "http://rsk.imageg.net/graphics/product_images/pRS1-7296926w345.jpg", description: "Protect your camera and other gear with this watertight, crushproof and dustproof case from Pelican. It has a retractable extension handle and strong polyurethane wheels with stainless steel bearings that makes it great for travel. And, it features an open cell core, stainless steel hardware and unconditional lifetime guarantee.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Pelican™ 1440 Case with Padded Divider and Lid Organizer", photo_url: "http://rsk.imageg.net/graphics/product_images/pRS1-7466827w345.jpg", description: "Protect your camera and other gear with this watertight, crushproof and dustproof case from Pelican. It features an open cell core, stainless steel hardware and unconditional lifetime guarantee.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Pelican™ 1550 Case with Padded Divider", photo_url: "http://rsk.imageg.net/graphics/product_images/pRS1-7280272w345.jpg", description: "Protect your camera and other gear with this watertight, crushproof and dustproof case from Pelican. It features an open cell core, stainless steel hardware and unconditional lifetime guarantee.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Lowepro Scope Travel 200 AW", photo_url: "http://www.suitcase.com/media/catalog/product/cache/1/image/370x/9df78eab33525d08d6e5fb8d27136e95/s/c/scopetravel_200_front.jpg", description: "Roomy, rugged backpack design offers a spacious and durable carrying solution for birders and wildlife watchers who travel and spend long hours in the field", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Vanguard VGP-3200 Camera Hard Case", photo_url: "http://www.optics4birding.com/media/images/products/23225-1.jpg", description: "Vanguard VGP-3200 Camera Hard Case has a solid aluminum alloy frame with sleek, professional style and an interior of adjustable dividers and customizable foam for a great fit for a variety of fragile equipment. Great for airport travel, they’re rugged and ready to withstand rough travel and the dual locks with two keys keep your valuables safe. With a comfortable handle and removable reinforced carrying strap, Vanguard VGP 3200 camera hard case makes travel worry-free.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Sealife Deluxe Travel Protective Camera Case", photo_url: "http://mcdn.scuba.com/images/bags/Sealife-Deluxe-Travel-Protective-Camera-Case.jpg", description: "This is a great case to protect your camera, strobe(s) video light and large enough to carry some accessories. It can be carried on and could even be checked since you can add a lock. Great case for protecting your camera ", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Family Photo", photo_url: "http://4.bp.blogspot.com/_P_QbkiPZ9u4/SgnA3shu6sI/AAAAAAAAAyE/90Yd9muy7tE/s400/tree-humpers.jpg", description: "When was this ever a good idea?", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Sunset Dock", photo_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSdYwTGzy3CArHO6vbZv5w1-k61sFxcam4kD8LyguopAnRxvIS8CQ", description: "Taken using Gearlance Gear !!", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Bloom", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTO3RvFqDMqHYSGgzj4rdCwYAMSB7eLIbz7HKbmVWQlLh3SviLG", description: "Taken using Gearlance Gear !!", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Path in Fall", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbkjdKcJTFGTiir3nY0-G9HviIAFzhRAiuq3GI4qRxL_MU8r7s", description: "Taken using Gearlance Gear !!", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Bird watching", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSgNhuFlxWZA-Eb0Hkmv8FoES8PudLgliyn5YPmCBRwabQvZQPt", description: "Taken using Gearlance Gear !!", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Hawaii", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTUs9xleZiA_BC8smm_XF_r2ElSLWrMHXNKGlNjzMrf1pabK7MT", description: "Taken using Gearlance Gear !!", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 },
  { category_id: Category.find_by_name("Other").id, name: "Zoidberg", photo_url: "http://www.8daysageek.com/wp-content/uploads/2011/11/zoidberg.png", description: "This is NOT a piece of equipment.", daily_price: 10, weekly_price: 40, monthly_price: 100, user_id: 1 }
]

items.shuffle.each do |item|
  i = Item.new
  i.category_id = item[:category_id]
  i.user_id = item[:user_id]
  i.name = item[:name]
  i.photo_url = item[:photo_url]
  i.description = item[:description]
  i.daily_price = item[:daily_price]
  i.weekly_price = item[:weekly_price]
  i.monthly_price = item[:monthly_price]
  i.save
  puts i.errors.full_messages
end

puts "#{Category.count} Categories in your database!"
puts "#{Item.count} Items in your database!"
