//
//  ViewController.swift
//  Astro Torch
//
//  Created by Hansel Ramos Osorio on 9/26/16.
//  Copyright © 2016 Hansel Ramos Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miBoton: UIButton!
    @IBOutlet weak var miSiwtch: UISwitch!
    
    var encendido:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.encendido = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func miBotonClic(_ sender: UIButton) {
        self._switch()
    }
    @IBAction func switchChange(_ sender: AnyObject) {
        self._switch()
    }
    
    func _switch() -> Void{
        if(self.encendido)!{
            self.view.backgroundColor = UIColor.white
            self.miBoton.setTitle("Encender Luz", for: .normal)
            self.miSiwtch.setOn(false, animated: true)
        }else{
            self.view.backgroundColor = UIColor.red
            self.miBoton.setTitle("Apagar Luz", for: .normal)
            self.miSiwtch.setOn(true, animated: true)
        }
        self.encendido = !self.encendido!
    }

}

