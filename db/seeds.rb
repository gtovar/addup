# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#   Creacion de universidades
cambridge = University.create(name: 'University of Cambridge', url_logo: 'University-of-Cambridge.png')
harvard  = University.create(name: 'University of Harvard', url_logo: 'University-of-Harvard.png')
princeton = University.create(name: 'University of Princeton', url_logo: 'University-of-Princeton.png')
stanford =University.create(name: 'University of Stanford', url_logo: 'University-of-Stanford.png')
yale = University.create(name: 'University of Yale.png', url_logo: 'University of Yale.png')


#   Create news careers for cambridge
banking = Career.create(name: 'Banking', years:2)
engineer = Career.create(name: 'Engineering', years:4)
economics = Career.create(name: 'Economics', years:3)
science = Career.create(name: 'Science', years:4)

#   Create news  careers for harvard
law_business = Career.create(name: 'Law and Business', years:3)
law_goverment = Career.create(name: 'Law and Goverment', years:5)
technology = Career.create(name: 'Technology', years:3)

#   Create news records for relationships between careers and universities
Relationship.create(university_id: cambridge.id, career_id: banking.id )
Relationship.create(university_id: cambridge.id, career_id: engineer.id )
Relationship.create(university_id: cambridge.id, career_id: economics.id )
Relationship.create(university_id: harvard.id, career_id: law_business.id )
Relationship.create(university_id: harvard.id, career_id: law_goverment.id )
Relationship.create(university_id: harvard.id, career_id: technology.id)

