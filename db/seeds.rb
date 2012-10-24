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

#   Create new records for Teachers

sponsor = Sponsor.create(name: 'Ms Ericka Yellowstone', verified: 1, review: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante dui, tempor sit amet pretium eu, sodales id enim.', university_id: cambridge.id, job: 'Foreign Student Advisor')

partnership = Partnership.create(name: 'Planned Parenthood', url_logo: 'wikipedia.png')

Student.create(first_name: 'Yvonne Leung',last_name: 'Chong',university_id: harvard.id, career_id: law_business.id ,enrollment: '1149721', sponsor_id: sponsor.id, partnership_id: partnership.id, country: 'US',city: 'San Francisco', phone:'8183119292', email: 'nino_gilberto@hotmail.com', account: '1234567897451', question1: 'I started Cardtorial earlier this year, inspired by my desire to express myself creatively and create something truly special to share with friends and family; I really wanted to make something that would make people smile!  Ive always loved cards & written communication (heck, I even keep sweet post-its) and Cardtorial really is!', question2: 'To date, Ive prototyped and crafted my cards using the laser cutters at Techshop, a shared workspace in San Francisco.  As I grow, its important to me that the cards continue to be crafted sustainably, right here in the US. Proceeds of this Kickstarter will go towards buying a laser cutter so I can keep production in-house and know that the cards are supporting our local economy.',verified: TRUE,url_video: 'http://youtu.be/sR_s8pjz8Ko',url_facebook: 'https://www.facebook.com/cardtorial',url_twitter: 'https://twitter.com/cardtorial',current_year: 9, cause: "Teaching Tai chi to people in my neighborhood")
