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

anubis = Ship.create!(
  name: 'anubis',
  description: "The Anaconda is the pride of Faulcon deLacy's shipyards, best exploration ship in the GALAXY !",
  location: 'rennes',
  capacity: 192,
  user: john_crichton,
  price: 860,
  photo: File.open(Rails.root.join('db/fixtures/ships/anubis.jpg'))
  )
anubis.update(latitude: 48.1119800, longitude: -1.6742900)
azerty1 = Ship.create!(
  name: 'vas quib quib',
  description: "The Anaconda is the pride of Faulcon deLacy's shipyards, best exploration ship in the GALAXY !",
  location: 'caen',
  capacity: 125,
  user: mark_hamill,
  price: 450,
  photo: File.open(Rails.root.join('db/fixtures/ships/orca.jpg'))
  )
azerty2 = Ship.create!(
  name: 'Col-705-ha',
  description: "The Anaconda is the pride of Faulcon deLacy's shipyards, best exploration ship in the GALAXY !",
  location: 'quimper',
  capacity: 250,
  user: mark_hamill,
  price: 4000,
  photo: File.open(Rails.root.join('db/fixtures/ships/maxres.jpg'))
  )
azerty3 = Ship.create!(
  name: 'Scoubidou',
  description: "The Anaconda is the pride of Faulcon deLacy's shipyards, best exploration ship in the GALAXY !",
  location: 'nantes',
  capacity: 3,
  user: mark_hamill,
  price: 100,
  photo: File.open(Rails.root.join('db/fixtures/ships/eagle.png'))
  )
azerty4 = Ship.create!(
  name: 'falcon',
  description: "The Anaconda is the pride of Faulcon deLacy's shipyards, best exploration ship in the GALAXY !",
  location: 'brest',
  capacity: 2,
  user: john_crichton,
  price: 150,
  photo: File.open(Rails.root.join('db/fixtures/ships/hauler.png'))
  )
beagle = Ship.create!(
  name: 'the beagle',
  description: " This is a well-armoured and well-armed ship capable of carrying large loads. Its versatile nature means that it is well-suited to tackling even the most hostile environment.",
  location: 'rennes',
  capacity: 65,
  user: john_crichton,
  price: 340,
  photo: File.open(Rails.root.join('db/fixtures/ships/dropship.png'))
  )
beagle.update(latitude: 48.1337602, longitude: -1.6750451)
dolphin = Ship.create!(
  name: 'dolphin',
  description: "Saud Kruger are famed for their range of luxury passenger ships. The Orca is capable of carrying passengers in extreme comfort and elegance. For its size and class it is also more than capable of defending itself.",
  location: 'rennes',
  capacity: 80,
  user: john_crichton,
  price: 400,
  photo: File.open(Rails.root.join('db/fixtures/ships/dolphin.jpg'))
  )
python = Ship.create!(
  name: 'python',
  description: "Another classic design that has survived the centuries. The first vessel was constructed in 2700 by Whatt and Pritney Ship Constructions. With the demise of the company, and after various mergers and takeovers, the ship design is now owned by Faulcon deLacy.",
  location: 'rennes',
  capacity: 60,
  user: kirk,
  price: 350,
  photo: File.open(Rails.root.join('db/fixtures/ships/black.jpg'))
  )
sidewinder = Ship.create!(
  name: 'sidewinder',
  description: "Its original design was as a light support ship and it lacked jump capability. Modern compact drives have enabled jump-capable versions to be created,",
  location: 'vannes',
  capacity: 4,
  user: aristide,
  price: 100,
  photo: File.open(Rails.root.join('db/fixtures/ships/sidewinder.png')))
soft = Ship.create!(
  name: 'soft',
  description: "Ready to flight, Another classic design that has survived the centuries.",
  location: 'vannes',
  capacity: 55,
  user: max,
  price: 370,
  photo: File.open(Rails.root.join('db/fixtures/ships/soft.jpg'))
  )
curitosity = Ship.create!(
  name: 'curitosity',
  description: "Ready to flight, Another classic design that has survived the centuries.",
  location: 'rennes',
  capacity: 2,
  user: john_crichton,
  price: 120,
  photo: File.open(Rails.root.join('db/fixtures/ships/eagle2.png'))
  )
verty = Ship.create!(
  name: 'varity',
  description: " This is a well-armoured and well-armed ship capable of carrying large loads. Its versatile nature means that it is well-suited to tackling even the most hostile environment.",
  location: 'caen',
  capacity: 65,
  user: john_crichton,
  price: 340,
  photo: File.open(Rails.root.join('db/fixtures/ships/mamba.png'))
  )

Booking.create!(user: spock, ship: anubis, status:'accepted', starting_date: '2019-06-08', ending_date: '2019-06-29')
Booking.create!(user: spock, ship: dolphin, status:'refused', starting_date: '2019-05-08', ending_date: '2019-06-29')
Booking.create!(user: kirk, ship: python, status:'refused', starting_date: '2019-05-08', ending_date: '2019-06-29')
Booking.create!(user: mark_hamill, ship: sidewinder, status:'accepted', starting_date: '2019-06-08', ending_date: '2019-06-29')
Booking.create!(user: kirk, ship: soft, status:'accepted', starting_date: '2019-05-08', ending_date: '2019-06-29')
Booking.create!(user: aristide, ship: anubis, status:'accepted', starting_date: '2019-04-10', ending_date: '2019-05-04')
Booking.create!(user: spock, ship: verty, status:'accepted', starting_date: '2019-04-10', ending_date: '2019-04-15')
Booking.create!(user: spock, ship: curitosity, status:'accepted', starting_date: '2019-04-01', ending_date: '2019-04-09')
Booking.create!(user: spock, ship: soft, status:'accepted', starting_date: '2019-01-05', ending_date: '2019-02-15')
Booking.create!(user: spock, ship: azerty2, status:'refused', starting_date: '2019-01-05', ending_date: '2019-02-15')
p "Ending seed..."


python.update(latitude: 48.10875118379765, longitude: -1.6965207498595873)
curitosity.update(latitude: 48.08894466688322, longitude: -1.6946499862670898)

