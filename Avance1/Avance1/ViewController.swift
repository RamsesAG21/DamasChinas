//
//  ViewController.swift
//  Avance1
//
//  Created by user223065 on 10/10/22.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var btOpciones: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaOpciones = segue.destination as! ViewControllerOpciones
        vistaOpciones.popoverPresentationController?.delegate = self
    }


}

