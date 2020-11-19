'''
Reto 1: Agrupamientos
Con base en el ejemplo 1, modifica el agrupamiento para que muestre 
el costo promedio por habitación por país de las propiedades de tipo casa
'''
# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://Isauraa:bedumongo@clusterforbedu.citlm.mongodb.net/admin?authSource=admin&replicaSet=atlas-y9jsnn-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_airbnb']['listingsAndReviews'].aggregate([
    {
        '$match': {
            'property_type': 'House'
        }
    }, {
        '$match': {
            'bedrooms': {
                '$gte': 1
            }
        }
    }, {
        '$addFields': {
            'costo_Habitacion': {
                '$divide': [
                    '$price', '$bedrooms'
                ]
            }
        }
    }, {
        '$group': {
            '_id': '$address.country', 
            'Habitaciones': {
                '$sum': 1
            }, 
            'CountrySum': {
                '$sum': '$costo_Habitacion'
            }
        }
    }, {
        '$addFields': {
            'Pais': '$_id', 
            'AvrPrice': {
                '$divide': [
                    '$CountrySum', '$Habitaciones'
                ]
            }
        }
    }, {
        '$project': {
            '_id': 0, 
            'Pais': 1, 
            'AvrPrice': 1
        }
    }
])