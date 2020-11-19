'''
//Reto 2: Asociación de colecciones
//Usando las colecciones comments y users, 
//se requiere conocer el correo y contraseña 
//de cada persona que realizó un comentario. 
//Construye un pipeline que genere como resultado 
//estos datos.
'''
from pymongo import MongoClient
# Requires the PyMongo package.
# https://api.mongodb.com/python/current

client = MongoClient('mongodb+srv://Isauraa:bedumongo@clusterforbedu.citlm.mongodb.net/admin?authSource=admin&replicaSet=atlas-y9jsnn-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_mflix']['comments'].aggregate([
    {
        '$lookup': {
            'from': 'users', 
            'localField': 'name', 
            'foreignField': 'name', 
            'as': 'userName'
        }
    }, {
        '$addFields': {
            'userObject': {
                '$arrayElemAt': [
                    '$userName', 0
                ]
            }
        }
    }, {
        '$addFields': {
            'userPass': '$userObject.password'
        }
    }, {
        '$project': {
            '_id': 0, 
            'name': 1, 
            'email': 1, 
            'userPass': 1
        }
    }
])
