# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	Home.create(
	logo: '',
	slider_image_one: '',
	slider_title_one: 'los expoertos en climas desde 1951',
	slider_text_one: 'Una empresa Méxicana hecha por Mexicanos.',
	slider_image_two: '',
	slider_title_two: 'Lorem Ipsum',
	slider_text_two: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	slider_image_three: '',
	slider_title_three: 'Lorem Ipsum',
	slider_text_three: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_promocional: 'Nuestro trabajo y Calida es la diferencia',
	text_promocional: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_button_promocional: 'Contactanos Ahora',
	title_history: 'Nuestra Historia',
	text_history: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_button_history: 'Nuestra Historia',
	title_contact: 'Contactanos',
	address: 'Garibaldi #515',
	telephone_one: '12345678',
	telephone_two: '8765431',
	fax: '87654321',
	email: 'cyvsa@gmail.com',
	title_recognition: 'RECONOCIMIENTOS IMEI',
	text_recognition: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_office: 'Oficinas Y Centros de Mantenimiento',
	text_office: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_button_office: '',
	title_job: 'Bolsa de trabajo',
	text_job: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.',
	title_button_job: '')



admin = User.create(
    :name => "Codealab",
    :email => "contacto@codealab.mx",
    :password => "temporal",
    :password_confirmation => "temporal",
    admin: true
)

Notice.create( 
	title: 'Experiencia',
	text: 'CYVSA  es la empresa más importante de Aire Acondicionado en America latina
	Pede realizar 250 obras simultaneas.
	Ha entrgado más de 18,000 instalaciones en más de 56 años.
	Cuenta con 1,900 colaboradores, entre ingenieros,técnicos y personal de apoyo.
	Tiene especialidades en proyectos e intalaciones en: HOTELERÍA, INDUSTRIAS, RESIDENCIAS, OFICINAS,ESCUELAS y otros.
	Opera en México,EE.UU, Sud América, Centro America y el Caribe.',
	image: ''
	)
	Notice.create( 
	title: 'Experiencia',
	text: 'CYVSA  es la empresa más importante de Aire Acondicionado en America latina
	Pede realizar 250 obras simultaneas.
	Ha entrgado más de 18,000 instalaciones en más de 56 años.
	Cuenta con 1,900 colaboradores, entre ingenieros,técnicos y personal de apoyo.
	Tiene especialidades en proyectos e intalaciones en: HOTELERÍA, INDUSTRIAS, RESIDENCIAS, OFICINAS,ESCUELAS y otros.
	Opera en México,EE.UU, Sud América, Centro America y el Caribe.',
	image: ''

	)

Service.create(
	icon:'fa-line-chart',
	title:'Instalación',
	content:'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'

	)
Service.create(
	icon:'fa-bank',
	title:'Instalación',
	content:'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'

	)
Service.create(
	icon:'fa-plug',
	title:'Instalación',
	content:'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'

	)
Service.create(
	icon: 'fa-line-chart',
	title: 'Instalación',
	content: 'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'
	)

Service.create(
	icon:'fa-building',
	title:'Instalación',
	content:'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'

	)
Service.create(
	icon:'fa-bank',
	title:'Instalación',
	content:'Lorem IpsumLorem ipsum Culpa dolore officia ad commodo proident amet occaecat tempor voluptate aliquip sint sunt cupidatat adipisicing adipisicing do est tempor Excepteur.'

	)
	

	
