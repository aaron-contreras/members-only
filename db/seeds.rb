# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

richard = Member.create(name: 'Richard Hendricks',
              email: 'richard@piedpiper.com',
              password: 'foobar',
              password_confirmation: 'foobar')
dinesh = Member.create(name: 'Dinesh Chugtai',
              email: 'dinesh@piedpiper.com',
              password: 'foobar',
              password_confirmation: 'foobar')
gilfoyle = Member.create(name: 'Bertram Gilfoyle',
              email: 'gilfoyle@piedpiper.com',
              password: 'foobar',
              password_confirmation: 'foobar')

richard.posts.create(title: 'Rant', body: 'Tabs >>>>> Spaces')
dinesh.posts.create(title: 'Pakistani Denzel', body: "I'm the cool cousin")
gilfoyle.posts.create(title: 'root', body: 'Oh Anton!')
