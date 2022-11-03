
import UIKit

class ViewControllerOpciones: UIViewController {

    @IBOutlet weak var scrollMusica: UISlider!
    @IBOutlet weak var scrollSonido: UISlider!
    @IBOutlet weak var Vibracion: UISwitch!
    
    @IBOutlet weak var btguardar: UIButton!
    var currMusica: Float!
    var currSonido: Float!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        preferredContentSize = CGSize(width: 280, height: 390)
        
        //scrollMusica.value = currMusica
        //scrollSonido.value = currSonido
        
        
    }
    
    
//    @IBAction func guardarOpcionesSonido(_ sender: UIButton) {
//        let vistaInicial = presentingViewController as! ViewController
//        vistaInicial.opcionesActualesSonido(musica: scrollMusica.value,sonido: scrollSonido.value)
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
