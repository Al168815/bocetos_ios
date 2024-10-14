import UIKit

class ControladorPantallaCitas: UIViewController {
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    @IBOutlet weak var citasLabel: UILabel! // Etiqueta para mostrar el mensaje de citas
    
    // Propiedad para almacenar citas
    var citas: [Cita] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializar_pantalla()
    }
    
    func inicializar_pantalla() {
        let citas = CitasStorage.shared.citas // Accede a las citas almacenadas
        
        if citas.isEmpty {
            citasLabel.text = "No hay citas disponibles."
            nombre_de_quien_lo_dijo.text = ""
            que_dijo_muro_texto.text = ""
        } else {
            let cita = citas.randomElement()!
            nombre_de_quien_lo_dijo.text = cita.nombre
            que_dijo_muro_texto.text = cita.texto
        }
    }
}
