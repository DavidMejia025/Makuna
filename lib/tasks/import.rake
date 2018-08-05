namespace :import do
	require 'csv'
	task :load_products =>:environment do 
		Dir.glob('lib/archivos/*.csv').each do |archivo|
			name = archivo.split('/').last.split('.').first
			product=Product.find_or_create_by(name: name)
    	CSV.foreach(archivo, headers:true) do |row|
    		product.product_histories.create(departament: row["Departamento"], year: row["Año"], production: row["Producción ‎(‎Toneladas‎)‎"])   			
    	end
   	end    
	end
end
