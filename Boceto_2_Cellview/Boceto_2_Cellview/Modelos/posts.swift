//
//  posts.swift
//  Bocetos_2
//
//  Created by alumno on 10/9/24.
//

struct Publicacion: Codable{
    // Decodable: Permite convertir informacion json a un modelo de swift
    // Encodable: Permite convertir un modelo de siwft a JSON
    // Codable: Ambas al mismo tiempo
    var id: Int
    var userId: Int
    var title: String
    var body: String
}
