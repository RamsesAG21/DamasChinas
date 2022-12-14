
import UIKit

class ViewControllerJuego: UIViewController, UIPopoverPresentationControllerDelegate, GameDelegate {
    
    
    
    var gameEngine: GameEngine = GameEngine()
    var puntos = 0
    var tiempo = "20:15"
    var nombre = ""
    
    
    @IBOutlet weak var boardView: BoardView!
    @IBOutlet weak var lbJugador: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.gameDelegate = self
        
        gameEngine.initializeGame()
        boardView.shadowPieces = gameEngine.pieces
        boardView.setNeedsDisplay()
        

        
    }
    
    
    func pieceAt(col: Int, row: Int) -> GamePiece? {
        return gameEngine.pieceAt(col: col, row: row)
    }
    
    
    func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        gameEngine.movePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
        
        boardView.shadowPieces = gameEngine.pieces
        boardView.setNeedsDisplay()
        
        if gameEngine.redTurn {
            lbJugador.text = "Red"
        }
        else{
            lbJugador.text = "Green"
        }
    }
    
    @IBAction func btReset(_ sender: UIButton) {
        gameEngine.initializeGame()
        boardView.shadowPieces = gameEngine.pieces
        boardView.setNeedsDisplay()
        lbJugador.text = "Red"
    }
    
    
    /*func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }*/
    
    @IBAction func btFin(_ sender: UIButton) {
        var nameTextField : UITextField?

                

                let alert = UIAlertController(title: "Ganador", message: "Puntaje: " + String(puntos)  + "  \n Tiempo: " + String(tiempo), preferredStyle: .alert)

                

                // OJO: El closure se ejecuta cuando se da tap en OK

                let datosAction = UIAlertAction(

                    title: "Guardar", style: UIAlertAction.Style.default) {
                    (action) -> Void in

                    if let name = nameTextField?.text {

                        // pone el nombre del tf de la alerta en el tf de la vista
                        
                        self.nombre = name

                        //self.tfNombre.text = name

                    } else {

                        print("No name entered")

                    }

                    

                }  // Aqui termina el Closure

                

                // aqui construyo el alerta

                alert.addTextField {

                    (txtUsername) -> Void in

                    nameTextField = txtUsername

                    nameTextField!.placeholder = "<name here>"

                }

                      

                alert.addAction(datosAction)

                

                let accion2 = UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in

                    print("Cancelado")

                })

                alert.addAction(accion2)

                

                present(alert, animated:true, completion: nil)

            }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    */
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaPopOver = segue.destination as! ViewControllerGanador
        vistaPopOver.popoverPresentationController?.delegate = self
    }*/


