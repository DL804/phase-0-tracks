

motorcycle_store = {
	leather_gear:{
		jackets:{
			ducati: 2, 
			dainese: 8, 
		},
		pants:{
			alpinestars: 3
		},
	},
	motorcycles:{
		type: {
			street: 2, 
			cruisers: 4
		},
		superbikes_instock: [
			"Ducati Panigale 1199", "Ducati Diavel"
		]
	}
		
}

p motorcycle_store[:leather_gear][:jackets][:ducati]

p motorcycle_store[:leather_gear][:pants][:alpinestars]

p motorcycle_store[:motorcycles][:superbikes_instock][0]

