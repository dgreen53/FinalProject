# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Province.create!(name: 'Alberta', pst: 0, gst: 5, hst: 0, short: 'AB')
Province.create!(name: 'British Columbia', pst: 7, gst: 5, hst: 0, short: 'BC')
Province.create!(name: 'Manitoba', pst: 8, gst: 5, hst: 0, short: 'MB')
Province.create!(name: 'New Brunswick', pst: 8, gst: 0, hst: 15, short: 'NB')
Province.create!(name: 'Newfoundland', pst: 8, gst: 0, hst: 15, short: 'NL')
Province.create!(name: 'Nova Scotia', pst: 0, gst: 0, hst: 15, short: 'NS')
Province.create!(name: 'Northwest Territories', pst: 0, gst: 5, hst: 0, short: 'NT')
Province.create!(name: 'Nunavut', pst: 0, gst: 5, hst: 0, short: 'NU')
Province.create(name: 'Ontario', pst: 0, gst: 0, hst: 13, short: 'ON')
Province.create!(name: 'Prince Edward Island', pst: 0, gst: 0, hst: 15, short: 'PEI')
Province.create!(name: 'Quebec', pst: 10, gst: 5, hst: 0, short: 'QC')
Province.create!(name: 'Saskatchewan', pst: 5, gst: 5, hst: 0, short: 'SK')
Province.create!(name: 'Yukon', pst: 0, gst: 5, hst: 0, short: 'YK')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
