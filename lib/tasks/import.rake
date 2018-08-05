namespace :import do
	require 'csv'
	task :load_products =>:environment do
		Dir.glob('lib/archivos/*.csv').each do |archivo|
			name = archivo.split('/').last.split('.').first
			product = Product.find_or_create_by(name: name)
    	CSV.foreach(archivo, headers:true) do |row|
    		history= product.product_histories.where(departament: row["Departamento"], year: row["Año"]).first
    		unless history
    			product.product_histories.create(departament: row["Departamento"], year: row["Año"], production: row["Producción ‎(‎Toneladas‎)‎"])
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
			farmer.farmers_products.create(product_id: Product.all.sample.id)
			farmer.farmers_products.create(product_id: Product.all.sample.id)
		end
	end
end
