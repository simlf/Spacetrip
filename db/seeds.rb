p "Starting seed..."

Booking.destroy_all
Ship.destroy_all
User.destroy_all

spock = User.create!(email: "spock@gmail.com", password: 'secret')
mark_hamill = User.create!(email: "markhamill@jedi.org", password: 'sith987')
john_crichton = User.create!(email: "crichton@gmail.com", password: 'vortex')
kirk = User.create!(email: "kirk@gmail.com", password: 'spocklove')
aristide = User.create!(email: "aristide@gmail.com", password: 'helloworld')
max = User.create!(email: "max@gmail.com", password: '123456')

anubis = Ship.create!(name: 'anubis',description: "The Imperial Cutter is a ship manufactured by Gutamaya for the Empire. As with other Imperial warships the Cutter is also used for projecting soft power", location: 'rennes', latitude: 48.1119800, longitude: -1.6742900, capacity: 192, user: john_crichton, price: 100,photo: File.open(Rails.root.join('db/fixtures/ships/anubis.jpg')))
dolphin = Ship.create!(name: 'dolphin',description: "Saud Kruger are famed for their range of luxury passenger ships. The Orca is capable of carrying passengers in extreme comfort and elegance. For its size and class it is also more than capable of defending itself.", location: 'nantes', latitude: 47.206246, longitude: -1.5644788, capacity: 60, user: john_crichton, price: 200, photo: File.open(Rails.root.join('db/fixtures/ships/dolphin.jpg')))
python = Ship.create!(name: 'python',description: "Another classic design that has survived the centuries. The first vessel was constructed in 2700 by Whatt and Pritney Ship Constructions. With the demise of the company, and after various mergers and takeovers, the ship design is now owned by Faulcon deLacy.", location: 'rennes', latitude: 48.10875118379765, longitude: -1.6965207498595873, capacity: 60, user: kirk, price: 400, photo: File.open(Rails.root.join('db/fixtures/ships/black.jpg')))
sidewinder = Ship.create!(name: 'sidewinder',description: "Its original design was as a light support ship and it lacked jump capability. Modern compact drives have enabled jump-capable versions to be created,", location: 'paris', latitude: 48.855425770695085, longitude: 2.344980239868164, capacity: 4, user: aristide, price: 800, photo: File.open(Rails.root.join('db/fixtures/ships/sidewinder.png')))
soft = Ship.create!(name: 'soft',description: "Ready to flight, Another classic design that has survived the centuries.", location: 'vannes', latitude: 47.65688955503545, longitude: -2.7561521530151367, capacity: 30, user: max, price: 1000, photo: File.open(Rails.root.join('db/fixtures/ships/soft.jpg')))

Booking.create!(user: spock, ship: anubis, status:'')
Booking.create!(user: mark_hamill, ship: dolphin, status:'')
Booking.create!(user: kirk, ship: python, status:'')
Booking.create!(user: mark_hamill, ship: sidewinder, status:'')
Booking.create!(user: kirk, ship: soft, status:'accept')

p "Ending seed..."
