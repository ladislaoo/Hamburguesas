//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Ladislao Osorio on 5/5/16.
//  Copyright © 2016 Ladislao Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listaPaises : ColeccionDePaises = ColeccionDePaises()
    var listaHamburgues : ColeccionDeHamburguesa = ColeccionDeHamburguesa()
    
    @IBOutlet weak var linkHamburguesa: UILabel!
    @IBOutlet weak var linkPais: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func encuentraHamburguesa(sender: AnyObject) {
    
        linkPais.text = listaPaises.obtenPais()
        self.view.backgroundColor = generateRandomColor()
        linkHamburguesa.text = listaHamburgues.obtenHamburguesa()
    }
    
    func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}

