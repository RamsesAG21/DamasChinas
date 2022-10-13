//
//  ViewControllerTutorial.swift
//  Avance1
//
//  Created by user223065 on 10/12/22.
//

import UIKit

class ViewControllerTutorial: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var vView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollview.contentSize = vView.frame.size
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
