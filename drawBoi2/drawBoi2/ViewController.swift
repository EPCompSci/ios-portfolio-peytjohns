//
//  ViewController.swift
//  drawBoi2
//
//  Created by 90303090 on 10/5/18.
//  Copyright © 2018 90303090. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clearCanvas(_ sender: Any) {
        canvasView.clearCanvas()
    }
    
    @IBAction func changeRed(_ sender: Any) {
        canvasView.colorChangerRed()
    }
    @IBAction func changeOrange(_ sender: Any) {
        canvasView.colorChangerOrange()
    }
    @IBAction func changeYellow(_ sender: Any) {
        canvasView.colorChangerYellow()
    }
    @IBAction func changeGreen(_ sender: Any) {
        canvasView.colorChangerGreen()
    }
    @IBAction func changeBlue(_ sender: Any) {
        canvasView.colorChangerBlue()
    }
    @IBAction func changePurple(_ sender: Any) {
        canvasView.colorChangerPurp()
    }
    @IBAction func changeBlack(_ sender: Any) {
        canvasView.colorChangerBlack()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

