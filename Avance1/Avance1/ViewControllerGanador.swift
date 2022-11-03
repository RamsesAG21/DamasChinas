
import UIKit

class ViewControllerGanador: UIViewController {

    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfDatoPunt: UITextField!
    @IBOutlet weak var tfDatoTime: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        preferredContentSize = CGSize(width: 260, height: 430)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
