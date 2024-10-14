//
//  ControladorGeneradorCita.swift
//  boceto_1.1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorPantallaAgregarCita: UIViewController{
    var quien_lo_dice: String = ""
    var que_dice: String = ""
    
    var cita_creada: Cita? = nil
    
   
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!
    
    
    @IBAction func agregar_cita_nueva(_ sender: Any) {
        if let quienLoDijo = quien_lo_dijo_view.text, !quienLoDijo.isEmpty,
           let queDijo = que_es_lo_que_dijo.text, !queDijo.isEmpty {
            let citaCreada = Cita(quien_lo_dijo: quienLoDijo, que_dijo: queDijo)
            CitasStorage.shared.agregarCita(citaCreada) // Almacena la cita
            performSegue(withIdentifier: "irAPantallaCitas", sender: self)
        } else {
            mostrar_alerta_error()
        }
    }

    func mostrar_alerta_error() {
                let alerta = UIAlertController(title: "Error", message: "Los campos no pueden estar vacíos.", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alerta, animated: true, completion: nil)
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irAPantallaCitas" {
            if let destinoVC = segue.destination as? ControladorPantallaCitas {
                destinoVC.citas = CitasStorage.shared.citas // Pasa todas las citas
            }
        }
    }

    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}
