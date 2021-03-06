''' Usando la colección sample_airbnb.listingsAndReviews, 
//mediante el uso de agregaciones, encontrar 
//el número de publicaciones que tienen conexión 
//a Internet, sea desde Wifi o desde cable (Ethernet).
'''
# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://Isauraa:bedumongo@clusterforbedu.citlm.mongodb.net/admin?authSource=admin&replicaSet=atlas-y9jsnn-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_airbnb']['listingsAndReviews'].aggregate([
    {
        '$match': {
            'amenities': {
                '$in': [
                    'Wifi', 'Ethernet'
                ]
            }
        }
    }, {
        '$count': '\"Wifi\",\"Ethernet\"'
    }
])
