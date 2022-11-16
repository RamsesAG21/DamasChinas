
import UIKit
import AVFoundation

class ViewControllerOpciones: UIViewController {
    
    @IBOutlet weak var scrollMusica: UISlider!
    @IBOutlet weak var scrollSonido: UISlider!
    @IBOutlet weak var Vibracion: UISwitch!
    
    let userD = UserDefaults.standard
    let on_off_Key = "onOffKey"
    let sound_Key = "sKey"
    let music_Key = "mKey"
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let audioPath = Bundle.main.path(forResource: "Sound", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch {
            print("error sound")
        }
        player.play()
        
        preferredContentSize = CGSize(width: 280, height: 390)
           
        checkMSV()
    }
    
    @IBAction func checkMSV() {
        let userD = UserDefaults.standard
        
        if(userD.bool(forKey: on_off_Key)) {
            Vibracion.setOn(true, animated: false)
        }
        else {
            Vibracion.setOn(false, animated: false)
        }
        
        let mKey = userD.float(forKey: "mKey")
        scrollMusica.value = mKey
        
        let sKey = userD.float(forKey: "sKey")
        scrollSonido.value = sKey
    }
    
    @IBAction func onofVibracion(_ sender: Any) {
        
        if (Vibracion.isOn) {
            userD.set(true, forKey: on_off_Key)
        }
        else {
            userD.set(false, forKey: on_off_Key)
        }
    }

    
    @IBAction func slMusic(_ sender: UISlider) {
        userD.set(GLfloat(self.scrollMusica.value), forKey: music_Key)
        print(sender.value)
        player.volume = sender.value
    }
    
    @IBAction func slSound(_ sender: Any) {
        userD.set(GLfloat(self.scrollSonido.value), forKey: sound_Key)
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
