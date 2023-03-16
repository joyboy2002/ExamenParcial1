//
//  ViewController.swift
//  ExamenParcial1
//
//  Created by ISSC_611_2023 on 13/03/23.
//

import UIKit

var game : String = ""
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Siguiente(_ sender: UIButton) {
        
        game = sender.currentTitle ?? ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let menu2 = segue.destination as? ViewControllerMenu2
        
        menu2?.juegoRecibido = game
    }
}

