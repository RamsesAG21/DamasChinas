
import UIKit

class ViewControllerJuego: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var gameEngine: GameEngine = GameEngine()
    
    
    
    @IBOutlet weak var boardView: BoardView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameEngine.initializeGame()
        boardView.shadowPieces = gameEngine.pieces

        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaPopOver = segue.destination as! ViewControllerGanador
        vistaPopOver.popoverPresentationController?.delegate = self
    }

}
