namespace :import do
	require 'csv'
	task :load_products =>:environment do
		Dir.glob('lib/archivos/productos/*.csv').each do |archivo|
			name = archivo.split('/').last.split('.').first
			product = Product.find_or_create_by(name: name)
    	CSV.foreach(archivo, headers:true) do |row|
    		history= product.product_histories.where(departament: row["Departamento"].strip, year: row["Año"]).first
    		unless history
    			product.product_histories.create(departament: row["Departamento"].strip, year: row["Año"], production: row["Producción ‎(‎Toneladas‎)‎"], performance: row["Rendimiento‎ (‎Ton‎/‎ha)‎"], product_name: name)
    		end
    	end
   	end
	end

	task :load_producers =>:environment do
		producers = [
			{name: 'Biotecnología NV'},
			{name: 'Mannap NV'},
			{name: 'Cementos CA'},
			{name: 'Mappi NV'},
			{name: 'Addition NV'}
		]

		producers.each do |producer|
			producer = Producer.find_or_create_by(producer)
			producer.producers_products.create(product_id: Product.all.sample.id)
			producer.producers_products.create(product_id: Product.all.sample.id)
		end
	end

	task :load_producers => :environment do
		producers = [
			{name: 'Biotecnología NV'},
			{name: 'Mannap NV'},
			{name: 'Cementos CA'},
			{name: 'Cope Azucar'},
			{name: 'Addition NV'}
		]

		producers.each do |producer|
			producer = Producer.find_or_create_by(producer)
			producer.producers_products.create(product_id: Product.all.sample.id)
			producer.producers_products.create(product_id: Product.all.sample.id)
		end
	end

	task :load_farmers => :environment do
		farmers = [
			{name: 'William Alberto Salguero'},
			{name: 'Daisy Ortiz Lugo'},
			{name: 'Kate Bezuglaya'},
			{name: 'Setalife Orellanas Frescas'},
			{name: 'Juan Morales'}
		]

		farmers.each do |farmer|
			farmer = Farmer.find_or_create_by(farmer)
			farmer.department_id = Department.all.sample.id
			farmer.save
			farmer.farmers_products.create(product_id: Product.all.sample.id, urgent: [0,1].sample)
			farmer.farmers_products.create(product_id: Product.all.sample.id, urgent: [0,1].sample)
		end
	end

	task :load_departments =>:environment do
  	CSV.foreach('lib/archivos/departamentos.csv', headers:true) do |row|
			Department.find_or_create_by(name: row['Nombre'])
  	end
	end
end
