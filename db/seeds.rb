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
u.user_bio = "Bacon ipsum dolor sit amet tenderloin swine meatball, jerky bacon pork ribeye spare ribs leberkas salami turducken chicken ham. Strip steak venison pancetta shoulder. Tail swine pork chop, cow ham brisket venison bacon jerky pastrami doner jowl ground round. Short loin sirloin pancetta bresaola ham strip steak"
u.admin = true
u.save

Category.destroy_all
categories = [
  { name: "Camera", slug: "cameras" },
  { name: "Lens", slug: "lenses" },
  { name: "Video", slug: "video" },
  { name: "Lighting", slug: "lighting" },
  { name: "Audio", slug: "audio" },
  { name: "Music", slug: "music" },
  { name: "Other", slug: "misc" }
]

categories.each do |category|
  c = Category.new
  c.name = category[:name]
  c.slug = category[:slug]
  c.save
end

Subcategory.destroy_all
subcategories = [
  { subname: "DSLR", category_id: 1 },
  { subname: "Micro 4-3", category_id: 1 },
  { subname: "Compact", category_id: 1 },
  { subname: "Other - Camera", category_id: 1 },
  
  { subname: "Canon Mount", category_id: 2 },
  { subname: "Nikon Mount", category_id: 2 },
  { subname: "Micro 4-3", category_id:2 },
  { subname: "Other - Lens", category_id: 2 },

  { subname: "Cameras", category_id: 3 },
  { subname: "Monitors", category_id: 3 },
  { subname: "Accesories", category_id: 3 },
  { subname: "Other - Video", category_id: 3 },

  { subname: "Strobe", category_id: 4 },
  { subname: "Continuous", category_id: 4 },
  { subname: "Accessories", category_id: 4 },
  { subname: "Other - Lighting", category_id: 4 },

  { subname: "Microphones", category_id: 5 },
  { subname: "Headphones", category_id: 5 },
  { subname: "Monitors", category_id: 5 },
  { subname: "Processing", category_id: 5 },
  { subname: "Other - Audio", category_id: 5 },

  { subname: "Guitar Pedals", category_id: 6 },
  { subname: "Amps", category_id: 6 },
  { subname: "Instruments", category_id: 6 },
  { subname: "Other - Music", category_id: 6 },

  { subname: "Other - Other", category_id: 7}
]

subcategories.each do |subcategory|
  sc = Subcategory.new
  sc.subname = subcategory[:subname]
  sc.category_id = subcategory[:category_id]
  sc.save
end

def random_number
  rand(0..12).to_i
end

photos = [
  "http://stevegreentv.com/images/encore_good-2.jpg",
  "http://cbcdn2.gp-static.com/uploads/flipbook_photo/image/1/01.jpg",
  "http://ep.yimg.com/ca/I/yhst-36953680823486_2261_21367563",
  "http://www.swim2000.com/images/product_gen/300x300/IC14.jpg",
  "http://www.42photo.com/images/products/prod_m/107138_m_IMG_272168.jpg",
  "http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/44/14449457_130307103000.jpg",
  "http://i.walmartimages.com/i/p/00/01/82/08/25/0001820825492_60X60.gif",
  "http://th03.deviantart.net/fs71/PRE/f/2012/365/8/e/1986_rca_pro_wonder_vhs_camcorder_by_tikikah_the_phoenix-d5pvh9r.jpg",
  "http://www.americanmusical.com/ItemImages/Large/CVT%204PLAYCLR.jpg",
  "http://www.dansdata.com/images/d60/lenses500.jpg",
  "http://overstockdigital.com/ovcat/product_thumb.php?img=images/canon100-400.jpg&w=250&h=161",
  "http://a.tgcdn.net/images/products/frontsquare/eba9_olloclip_iphone_camera_lens.jpg",
  "http://used.natcam.com/newused/images/8005/NIKON_AF_70-300MM_F4-5PT6_G.jpg"
]

descriptions = [
  "The D7100 DSLR Camera (Body Only) from Nikon is a high performance, compact DSLR camera with high resolution photo and Full HD video capability. The 24.1MP DX-format CMOS sensor provides superior images with accurate colors and, designed without an optical low-pass filter, it maximizes its resolution for exceptionally sharp details.",
  "The Canon PowerShot G15 Digital Camera is a point-and-shoot with expansive creative possibilities. Going beyond the genre's name, the G15 provides you with any number of options for capturing your vision - from 1080p HD video recording to 10 fps continuous burst shooting to numerous shooting modes. In addition, the G15's compact form-factor makes it well-suited for being your go-to image maker.",
  "Digital Inspiration. That's how the good folks at Canon define their EOS 60D DSLR Camera Kit with Canon EF-S 18-135mm IS Lens. With a camera body that features an 18MP APS-C CMOS sensor, a 3\" Clear View LCD, HD video capture, and an 18-135mm lens, among other mouth-watering features, perhaps you will agree. Let's take a tantalizing tour of this highly-anticipated DSLR camera kit.",
  "The SVGA (800 x 600) resolution InFocus IN112 Mobile DLP Projector is a lightweight and compact workhorse that can pump out 2700 lumens of brightness at a 3000:1 contrast ratio on a continuous 24/7 duty cycle. It weighs about five pounds (2.2kg) and its footprint is about the size of a sheet of US letter paper.",
  "The ATV Pro from Kanex is essentially an AirPlay mirroring adapter for VGA projectors. The adapter simply connects to your Apple TV and sends the signal to an outgoing VGA plug-in. The potential for this tool is endless and is a long time coming for small businesses, educators, and not-for-profits.",
  "With its high intensity #2 Reflector & Prismatic Glass, the tiny focusable Lowel Pro-Light is more efficient than a mini-Fresnel of equal wattage, yet it gives an exquisite even light, with Fresnel like shadow quality. It can be used as a low-level key or accent light, fill light (with diffusion), or backlight.",
  "The Westcott Illusions uLite 2-Light Green Screen Photo Lighting Kit (120VAC) makes the world of green screen photography easy and accessible no matter what your level of experience. Instead of battling the elements or costly location shooting, let this kit bring the location to you. Everything you need is here: 2 uLite Constant Lights with collapsible softboxes, 6.5' stands, 9.0 x 10' wrinkle-resistant green screen and a PhotoKey 5 Lite Software disc. The software has 9 Effects and Color Correction Filters, 20 Overlay Graphics, video tutorials and an online manual.",
  "The Tiffen 4 x 5.65\" Black Pro-Mist 1/4 Filter helps to reduce the value of the highlights while slightly lowering the overall contrast. This filter is especially useful for smoothing out and softening facial wrinkles and other blemishes. While designed for use with movies, this filter can also be used for fashion and beauty applications. Unlike a traditional diffusion or soft focus filter, Pro-Mist filters provide little loss of detail across the image. The 1/4 density provides a very small amount of contrast and highlight reduction and allows for a soft, pastel-like quality of light.",
  "These filters are available in two different densities (Cokin #s 150 & 151) and have a misty graduated area. The fog or mist effect is more pronounced with more distant objects while the foreground remains sharp and clear. These filters can be combined with Cokin Graduated and Sunset filters. Vertical adjustment in the filter holder provides a continuous graduation of sharpness between near and far planes.",
  "The D7100 DSLR Camera (Body Only) from Nikon is a high performance, compact DSLR camera with high resolution photo and Full HD video capability. The 24.1MP DX-format CMOS sensor provides superior images with accurate colors and, designed without an optical low-pass filter, it maximizes its resolution for exceptionally sharp details.",
  "The Canon PowerShot G15 Digital Camera is a point-and-shoot with expansive creative possibilities. Going beyond the genre's name, the G15 provides you with any number of options for capturing your vision - from 1080p HD video recording to 10 fps continuous burst shooting to numerous shooting modes. In addition, the G15's compact form-factor makes it well-suited for being your go-to image maker.",
  "Digital Inspiration. That's how the good folks at Canon define their EOS 60D DSLR Camera Kit with Canon EF-S 18-135mm IS Lens. With a camera body that features an 18MP APS-C CMOS sensor, a 3\" Clear View LCD, HD video capture, and an 18-135mm lens, among other mouth-watering features, perhaps you will agree. Let's take a tantalizing tour of this highly-anticipated DSLR camera kit.",
  "Digital Inspiration. That's how the good folks at Canon define their EOS 60D DSLR Camera Kit with Canon EF-S 18-135mm IS Lens. With a camera body that features an 18MP APS-C CMOS sensor, a 3\" Clear View LCD, HD video capture, and an 18-135mm lens, among other mouth-watering features, perhaps you will agree. Let's take a tantalizing tour of this highly-anticipated DSLR camera kit."
]

names = [
  "Vintage KODAK VIGILANT JUNIOR SIX",
  "Canon XA10 HD Professional Camcorder",
  "Polaroid The 800 Land Camera Vintage Instant Film Camera",
  "Canon XA10 HD Professional Camcorder",
  "Canon VIXIA HF R400 High-definition camcorder with 32X optical zoom",
  "JVC Everio GZ-E200 1.5 MP Camcorder - 1080i - Black",
  "JVC - GCPX100BUS - 3.0in, Wifi, F1.2 , LED",
  "Panasonic HC-X920 12.76 MP Camcorder - 1080p - Black",
  "Sony Super HAD CCD with Intelligent Infrared and 3.8mm Wide Lens",
  "Nikon Coolpix S31 Shock & Waterproof Digital Camera (Blue)",
  "Intova 14MP Digital Sports Camera with 180 Waterproof Housing",
  "Old School F Nikon",
  "Nikon Coolpix S31 Shock & Waterproof Digital Camera (Blue)"
]


Item.destroy_all
items = [
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Other - Camera").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Compact").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Micro 4-3").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("DSLR").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Canon Mount").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Nikon Mount").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Micro 4-3").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Other - Lens").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Cameras").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Monitors").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Accesories").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Other - Video").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Strobe").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Continuous").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Accessories").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Other - Lighting").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Microphones").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Headphones").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Monitors").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Processing").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Other - Audio").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Guitar Pedals").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Amps").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Instruments").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Other - Music").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Other").id,
    subcategory_id: Subcategory.find_by_subname("Other - Other").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  ### NEW BATCH ##
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Other - Camera").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Compact").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("Micro 4-3").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Camera").id,
    subcategory_id: Subcategory.find_by_subname("DSLR").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Canon Mount").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Nikon Mount").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Micro 4-3").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lens").id,
    subcategory_id: Subcategory.find_by_subname("Other - Lens").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Cameras").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Monitors").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Accesories").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Video").id,
    subcategory_id: Subcategory.find_by_subname("Other - Video").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Strobe").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Continuous").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Accessories").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Lighting").id,
    subcategory_id: Subcategory.find_by_subname("Other - Lighting").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Microphones").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Headphones").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Monitors").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Processing").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Audio").id,
    subcategory_id: Subcategory.find_by_subname("Other - Audio").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Guitar Pedals").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Amps").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Instruments").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },
  { category_id: Category.find_by_name("Music").id,
    subcategory_id: Subcategory.find_by_subname("Other - Music").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  },

  { category_id: Category.find_by_name("Other").id,
    subcategory_id: Subcategory.find_by_subname("Other - Other").id,
    name: names[random_number],
    photo_url: photos[random_number],
    description: descriptions[random_number],
    daily_price: rand(1..20),
    weekly_price: rand(20..40),
    monthly_price: rand(40..100),
    user_id: rand(1..10)
  }
]

items.shuffle.each do |item|
  i = Item.new
  i.category_id = item[:category_id]
  i.subcategory_id = item[:subcategory_id]
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
