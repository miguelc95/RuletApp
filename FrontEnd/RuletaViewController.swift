//
//  RuletaViewController.swift
//  FrontEnd
//
//  Created by Miguel Cuellar on 8/28/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit

class RuletaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var PickerView: UIPickerView!
    var DataSource : [Int]! = [20,30,40,50,60,70,200,220]
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var PrecioInicio: UILabel!
    @IBOutlet weak var PrecioFin: UILabel!
    
    var value=0
    var aporta = ResultadoViewController()
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        DataSource.removeAll()
        PrecioFin.text = "\(currentValue)"
        for _ in 0...Int(currentValue) {
            DataSource.append(Int(arc4random_uniform(UInt32(currentValue))) + 1)
        }
        PickerView.reloadAllComponents()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyanColor()
        PrecioInicio.text = String(0)
        PrecioFin.text = String(200)
        PickerView.delegate = self
        PickerView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        // selected value in Uipickerview in Swift
        value=DataSource[row]
        print(value)
        self.performSegueWithIdentifier("MainToTimer", sender: value)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(DataSource[row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let theDestination = (segue.destinationViewController as! ResultadoViewController)
        theDestination.Aporta = value
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
