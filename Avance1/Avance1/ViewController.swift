
import UIKit
import AVFoundation

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var btOpciones: UIButton!
    @IBOutlet weak var btnMusic: UIButton!
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let audioPath = Bundle.main.path(forResource: "sound", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        } catch {
            print("error sound")
        }
        player?.play()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /* func playBGMusic (filedNamed: String){
        let url = Bundle.main.url(forResource: filedNamed, withExtension: nil)
        guard let newUrl = url else {
            print("Could not find filed called \(filedNamed)")
                return
        }
        do{
            bgPlayer = try AVAudioPlayer(contentsOf: newUrl)
            bgPlayer.numberOfLoops = -1
            bgPlayer.prepareToPlay()
            bgPlayer.play()
        }
        catch let error as NSError{
            print(error.description)
        }
    }*/
    
    /*@IBAction func btnMusAct(_ sender: UIButton) {
        playBGMusic(filedNamed: "bgMusic.mp3")
    }*/
    
    
    //func opcionesActualesSonido (musica: Float, sonido: Float){
        
    //}
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
            return .none
        }
        
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let vistaOpciones = segue.destination as! ViewControllerOpciones
    //        vistaOpciones.popoverPresentationController?.delegate = self
    //    }


}

