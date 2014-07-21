# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Service.create(no: 'AA', name: '救援')
Service.create(no: 'MT', name: '保养')
Service.create(no: 'CW', name: '洗车')
Service.create(no: 'RP', name: '维修')

User.create(username: 'admin', role: '管理员')