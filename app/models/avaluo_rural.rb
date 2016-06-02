class AvaluoRural < ActiveRecord::Base
	
	TYPE= ['C.C.', 'Pasaporte']

	TVIA = ['Calle', 'Carrera', 'Diagonal', 'Transversal', 'Avenida', 'Avenida Calle', 
						'Avenida Carrera', 'Avenida autopista', 'Carretera',  'Circular', 'Camino']

	DEPARTMENT=['Amazonas', 'Antioquia', 'Arauca', 'Atlántico', 'Bolívar',
							 'Boyacá', 'Caldas', 'Caquetá', 'Casanare', 'Cauca', 'Cesar',
							 'Chocó','Córdoba', 'Cundinamarca', 'Guainía', 'Guaviare',
							 'Huila', 'La Guajira', 'Magdalena', 'Meta', 'Nariño', 
							 'Norte de Santander', 'Putumayo', 'Quindío', 'Risaralda',
							 'San Andrés y Providencia ', 'Santander', 'Sucre', '	Tolima',
							 'Valle del Cauca', 'Vaupés', 'Vichada']	

	CITIES=['Aguachica', 'Apartadó', 'Arauca', 'Armenia',
					'Barrancabermeja', 'Barranquilla', 'Bello', 'Bogotá',
					'Bucaramanga', 'Buenaventura', 'Buga', 'Cali', 'Cartago',
					'Cartagena', 'Caucasia', 'Cereté', 'Chia', 'Ciénaga', 'Cúcuta',
					'Dosquebradas', 'Duitama', 'Envigado', 'Facatativá', 
					'Florencia', 'Floridablanca', 'Fusagasugá', 'Girardot', 'Girón',
					'Ibagué', 'Ipiales', 'Itagüí', 'Jamundí', 'Lorica', 'Los Patios',
					'Magangué', 'Maicao', 'Malambo', 'Manizales', 'Medellín', 'Melgar',
					'Montería', 'Neiva', 'Ocaña', 'Paipa', 'Palmira', 'Pamplona',
					'Pasto', 'Pereira', 'Piedecuesta', 'Pitalito', 'Popayán', 'Quibdó',
					'Riohacha', 'Rionegro', 'Sabanalarga', 'Sahagún', 'San Andrés Isla',
					'Santa Marta', 'Sincelejo', 'Soacha', 'Sogamoso', 'Soledad', 'Tibú',
					'Tuluá', 'Tumaco', 'Tunja', 'Turbo', 'Valledupar', 'Villa de leyva',
					'Villa del Rosario', 'Villavicencio', 'Yopal', 'Yumbo', 'Zipaquira']						 
end
