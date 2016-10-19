//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Mac on 10/19/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var eightButton: UIButton!
    @IBOutlet var nineButton: UIButton!
    @IBOutlet var fourButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var subButton: UIButton!
    @IBOutlet var multButton: UIButton!
    @IBOutlet var divideButton: UIButton!
    @IBOutlet var equalButton: UIButton!
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var dotButton: UIButton!
    
    enum operation :String {
        
        case divide = "/"
        case add = "+"
        case subtract = "-"
        case multiply = "*"
        case clear = "clear"
        
        
        
    }
    
    
    
    var  btnSound : AVAudioPlayer?
    var runningNumber = ""
    var seondRunningNumber = ""
    var result = 0.0
    var currentOperation = operation.clear

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.layer.cornerRadius = 10
        resultLabel.layer.masksToBounds = true
        resultLabel.layer.borderWidth = 1
        resultLabel.layer.borderColor = UIColor.blueColor().CGColor
        
        
 
        
        sevenButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        eightButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        nineButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        fourButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        sixButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        fiveButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        twoButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        threeButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        zeroButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        plusButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        subButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        multButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        divideButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        equalButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        oneButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;
        dotButton.layer.cornerRadius = self.sevenButton.frame.size.width / 2;

        
        
        sevenButton.clipsToBounds = true;
        eightButton.clipsToBounds = true;
        nineButton.clipsToBounds = true;
        fourButton.clipsToBounds = true;
        sixButton.clipsToBounds = true;
        fiveButton.clipsToBounds = true;
        twoButton.clipsToBounds = true;
        threeButton.clipsToBounds = true;
        zeroButton.clipsToBounds = true;
        plusButton.clipsToBounds = true;
        subButton.clipsToBounds = true;
        multButton.clipsToBounds = true;
        divideButton.clipsToBounds = true;
        equalButton.clipsToBounds = true;
        oneButton.clipsToBounds = true;
        dotButton.clipsToBounds = true;

        
        
        sevenButton.layer.borderWidth = 1
        eightButton.layer.borderWidth = 1
        nineButton.layer.borderWidth = 1
        fourButton.layer.borderWidth = 1
        fiveButton.layer.borderWidth = 1
        sixButton.layer.borderWidth = 1
        twoButton.layer.borderWidth = 1
        threeButton.layer.borderWidth = 1
        zeroButton.layer.borderWidth = 1
        plusButton.layer.borderWidth = 1
        subButton.layer.borderWidth = 1
        multButton.layer.borderWidth = 1
        divideButton.layer.borderWidth = 1
        equalButton.layer.borderWidth = 1
        oneButton.layer.borderWidth = 1
        dotButton.layer.borderWidth = 1

       
        
        
        sevenButton.layer.borderColor = UIColor.blueColor().CGColor
        eightButton.layer.borderColor = UIColor.blueColor().CGColor
        nineButton.layer.borderColor = UIColor.blueColor().CGColor
        sixButton.layer.borderColor = UIColor.blueColor().CGColor
        fiveButton.layer.borderColor = UIColor.blueColor().CGColor
        fourButton.layer.borderColor = UIColor.blueColor().CGColor
        twoButton.layer.borderColor = UIColor.blueColor().CGColor
        threeButton.layer.borderColor = UIColor.blueColor().CGColor
        zeroButton.layer.borderColor = UIColor.blueColor().CGColor
        plusButton.layer.borderColor = UIColor.blueColor().CGColor
        subButton.layer.borderColor = UIColor.blueColor().CGColor
        multButton.layer.borderColor = UIColor.blueColor().CGColor
        divideButton.layer.borderColor = UIColor.blueColor().CGColor
        equalButton.layer.borderColor = UIColor.blueColor().CGColor
        oneButton.layer.borderColor = UIColor.blueColor().CGColor
        dotButton.layer.borderColor = UIColor.blueColor().CGColor

        
        let path =  NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        
        
        
        let soundURL =  NSURL(fileURLWithPath:path!)
        
        
        
        do{
            
            try  btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            
            btnSound?.prepareToPlay()
            
            
            
            
            
        } catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
        
        
        currentOperation = operation.clear
        
        
   

    
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    @IBAction func numberPressed(sender: AnyObject) {
        
         
        
        if (currentOperation == operation.clear){ // left operator
            
            if (runningNumber == ""){
                
                
                runningNumber = "\(sender.tag)" // first number
                
            }else{
                
                
                runningNumber += "\(sender.tag)" // not first number
                
                
                
            }
            
            
            resultLabel.text = runningNumber
            
            
        }else{
            
            
            if (self == ""){
                
                
                seondRunningNumber = "\(sender.tag)" // first number
                
            }else{
                
                
                seondRunningNumber += "\(sender.tag)" // not first number
                
                
                
            }
            
            resultLabel.text = seondRunningNumber
            
            
        }
        
        
        
        
        
        
        
        playSound()
        
    }
    
    
    func playSound(){
        
        if (btnSound!.playing){
            
            btnSound!.stop()
            
        }else{
            
            btnSound!.play()
            
        }
        
    }
    
    
    @IBAction func operationPressed(sender: AnyObject) {
        
        
        var  choosedOperation : operation
        
        switch sender.tag {
        case 10:
            choosedOperation = operation.add
        case 11:
            choosedOperation = operation.subtract
        case 12:
            choosedOperation = operation.multiply
        default:
            choosedOperation = operation.divide
            
        }
        
        
        processOperation(choosedOperation)
        btnSound!.play()

        
        
        
    }
    
    
    
    
    
    
    func processOperation (operationVar : operation){
        
        if (currentOperation != operation.clear){
            
            
            processEqualOperation()
            
            runningNumber = "\(result)"
            
            
            
        }
        
        if (result != 0 && runningNumber == ""){
            
            runningNumber = "\(result)"
            
        }
        
        currentOperation = operationVar
        
        
        
        
        
    }
    
    
    
    
    @IBAction func equalOperationAction(sender: AnyObject) {
        
        
        processEqualOperation()
        
        btnSound!.play()

    }
    
    
    func processEqualOperation (){
        
        
        if (runningNumber != "" && seondRunningNumber != "" && currentOperation != operation.clear){
            
            
            if (currentOperation == operation.add){
                
                
                result = (Double(runningNumber)!) + Double(seondRunningNumber)!
   
            } else if(currentOperation == operation.subtract){
                
                
                result = Double(runningNumber)! - Double(seondRunningNumber)!
                
            }else if (currentOperation == operation.multiply){
                
                
                result = Double(runningNumber)! * Double(seondRunningNumber)!
                
            }else if (currentOperation == operation.divide){
                
                
                result = Double(runningNumber)! / Double(seondRunningNumber)!
                
            }
            
            
            
            
            runningNumber = ""
            seondRunningNumber = ""
            currentOperation = operation.clear
            resultLabel.text = "\(result)"
            
            
            
            
        }
        
        
    }

}

