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

Flight.create!(from_airport: ist, to_airport: adb,
               depart_at: 6.hours.from_now, duration: 65)
Flight.create!(from_airport: saw, to_airport: adb,
               depart_at: 3.days.from_now, duration: 55)
Flight.create!(from_airport: adb, to_airport: ist,
               depart_at: 1.day.from_now, duration: 70)
Flight.create!(from_airport: esb, to_airport: ist,
               depart_at: 2.days.from_now, duration: 45)               