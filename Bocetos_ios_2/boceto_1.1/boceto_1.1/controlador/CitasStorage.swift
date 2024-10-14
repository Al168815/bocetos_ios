//
//  CitasStorage.swift
//  boceto_1.1
//
//  Created by alumno on 10/4/24.
//

import Foundation

class CitasStorage {
    static let shared = CitasStorage() // Singleton para acceso global
    private(set) var citas: [Cita] = [] // Array privado para almacenar citas

    private init() {} // Previene la creación de instancias

    // Método para agregar una cita
    func agregarCita(_ cita: Cita) {
        citas.append(cita)
    }

    // Método para obtener todas las citas
    func obtenerCitas() -> [Cita] {
        return citas
    }
}

