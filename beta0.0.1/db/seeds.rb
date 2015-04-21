# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_users = AdminUser.create([{email:'jon@teamginger.com', encrypted_password:'$2a$10$3o5C6CnQrck0jiIUGOzz5uDiZT3Dq47HVUW8NeaeO01bF.OOiFfxC'},{email:'branch@teamginger.com', encrypted_password:'$2a$10$EXJb2TssyYxmm2QS917Orev9BkXZv8MumpuLTMYTomx96fiIRVN6i'},{email:'chuck@teamginger.com', encrypted_password:'$2a$10$.zOivqcxuwEBwrgeXqD.OOAUHMqQeO8u.LSX3kxdIfglmGK9JRmhK'}])
users = User.create([{email:'ginger@teamginger.com',encrypted_password:'$2a$10$wymcXoX5Wm6tkgcYauKrMenSbG4QEZcZFEADmKn6OUWxTEkze7otK'}])