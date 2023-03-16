//
//  ViewControllerMenu2.swift
//  ExamenParcial1
//
//  Created by ISSC_611_2023 on 15/03/23.
//

import UIKit


class ViewControllerMenu2: UIViewController {
    var nivel = ""
    var juegoRecibido = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func irAlJuego(_ sender: UIButton) {
        nivel = sender.currentTitle ?? ""
        
        if(juegoRecibido == "Matematicas"){
            performSegue(withIdentifier: "matematiksSegue", sender: sender)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let matematiks = segue.destination as! Matematiks
        matematiks.dificultad = nivel
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
