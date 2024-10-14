//
//  posts.swift
//  Boceto_2_Cellview
//
//  Created by alumno on 10/9/24.
//


struct Post: Codable{
    //Decodable: permite convertir informacion json a un modelo de swift
    //Encodable: permite convertir un modelo de swift a JSON
    //Codable: ambas al mismo tiempo
    
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
}
