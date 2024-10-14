//
//  ViewController.swift
//  boceto_1.1
//
//  Created by alumno on 9/25/24.
//

import UIKit


class ViewController: UIViewController {
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Creeper", que_dijo: "Tssseñor")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
    var numero_aleatorio: Int = Int.random(in: 0...25)
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        
        super.viewDidLoad()
        
        actualizar_cantidad()
    }
    
    func actualizar_cantidad(){
    }
    
    
    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        let citas = citas_disponibles.citas_creadas
        let destinoVC = ControladorPantallaCitas(coder: coder)!
        destinoVC.citas = citas // Pasa todas las citas al controlador
        return destinoVC
    }

    
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue) {
        
    }
        
        /*@IBAction func regresar(segue: UIStoryboardSegue){
         print("En esto del proceso")
         print(segue.source as? ControladorPantallaCitas)
         let elemento = segue.source as? ControladorPantallaCitas
         print(elemento?.cita_actual.nombre)
         }*/
        
    }

