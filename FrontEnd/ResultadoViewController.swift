//
//  ResultadoViewController.swift
//  FrontEnd
//
//  Created by Miguel Cuellar on 8/28/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    @IBOutlet weak var Aportación: UILabel!
     var Aporta:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyanColor()
        if let Aportación = 
 Aportación.text = String(Aporta)

        // Do any additional setup after loading the view.
    }

    class ResultadoViewController: UIViewController {
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
