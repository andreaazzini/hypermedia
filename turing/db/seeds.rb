# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   eate([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(namcities = City.cre: 'Emanuel', city: cities.first)

teachers_list = [
  [0, 'Francesca', 'Febbo', 32, '#', ''],
  [1, 'Umberto', 'Di Fabrizio', 41, '#', ''],
  [2, 'Francesco', 'Corsini', 38, '#', ''],
  [3, 'Francesco', 'Angelo', 50, '#', ''],
  [4, 'Valentina', 'Ceriani', 39, '#', '']
]

office_hours_list = [
  [0, 0, 'Monday', 10, 15],
  [1, 1, 'Wednesday', 11, 30],
  [2, 2, 'Friday', 17, 00],
  [3, 3, 'Tuesday', 10, 15],
  [4, 4, 'Monday', 10, 45],
]

teachers_list.each do |id, name, surname, age, photo_url, curriculum|
  Teacher.create(id: id, name: name, surname: surname, age: age,
                 photo_url: photo_url, curriculum: curriculum)
end

office_hours_list.each do |id, teacher_id, day, hour, minute|
  OfficeHour.create(id: id, teacher_id: teacher_id, day: day, hour: hour, minute: minute)
end