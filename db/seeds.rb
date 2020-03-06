# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all
Mechanic.destroy_all
Problem.destroy_all

puts "Done!"
20.times do
    Car.create(make: Faker::Vehicle.make, model: Faker::Vehicle.model, color: Faker::Vehicle.color)

end
# User.create(name: "Armideonokawa", password_digest: "Jojo2008!")


ase_certs = ["Engine", "Transmission", "A/C System", "Brakes", "Drivetrain",
            "Suspension", "Electrical"]
mechanics = ["Robert", "Big Mac", "Joseph", "Hakeem", "Andre",
            "Joshua", "Earl", "Ozzy", "Juliano", "Goose", "Mike",
            "George", "Michelle", "Jules", "Sally", "Eve", "Erin",
            "Jackie", "Lisa", "Jennifer", "Paz"]

21. times {
    Mechanic.create(name: mechanics.sample, specialty: ase_certs.sample)
}           

