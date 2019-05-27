Airport.delete_all
Flight.delete_all

adb = Airport.create!(code: "ADB",
                      full_name: "Adnan Menderes Airport",
                      city: "İzmir")

ist = Airport.create!(code: "IST",
                      full_name: "Atatürk Airport",
                      city: "İstanbul")

saw = Airport.create!(code: "SAW",
                      full_name: "Sabiha Gökçen Airport",
                      city: "İstanbul")

esb = Airport.create!(code: "ESB",
                      full_name: "Esenboğa Airport",
                      city: "Ankara")

f1 = Flight.create!(from_airport: ist, to_airport: adb,
                    depart_at: 6.hours.from_now, duration: 65)
f2 = Flight.create!(from_airport: saw, to_airport: adb,
                    depart_at: 3.days.from_now, duration: 55)
f3 = Flight.create!(from_airport: adb, to_airport: ist,
                    depart_at: 1.day.from_now, duration: 70)
f4 = Flight.create!(from_airport: esb, to_airport: ist,
                    depart_at: 2.days.from_now, duration: 45)

b1 = f1.bookings.build
p1 = Passenger.create!(name: "Jamcry", email: "jamcry@hotmail.com")
t1 = b1.tickets.build(passenger: p1)
t1.save
p2 = Passenger.create!(name: "Watson", email: "johnw@tson.co.uk")
t2 = b1.tickets.build(passenger: p2)
t2.save