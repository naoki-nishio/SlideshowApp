//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 西尾直樹 on 2021/08/15.
//

import UIKit

class ViewController: UIViewController {

 

    
    @IBOutlet weak var startslide: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var i : Int=1
    var a : UIImage!
    var b : UIImage!
    var c : UIImage!
    var d : UIImage!
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a = UIImage(named:"show1")
        b = UIImage(named:"show2")
        c = UIImage(named:"show3")
        d = UIImage(named:"show4")
        imageView.image = a
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        if i==4{
            i=1
        }else{
            i=i+1
        }
        if i==2{
            imageView.image=b
        }else if i==3{
            imageView.image=c
        }else if i==4{
            imageView.image=d
        }else if i==1{
            imageView.image=a
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
        if(i==1){
            i=4
        }else{
            i=i-1
        }
        if i==2{
            imageView.image=b
        }else if i==3{
            imageView.image=c
        }else if i==4{
            imageView.image=d
        }else if i==1{
            imageView.image=a
        }
        
    }
    
    @IBAction func slideshow(_ sender: Any) {
        if timer==nil{
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(Slide), userInfo: nil, repeats: true)
            nextbutton.isHidden=true
            backbutton.isHidden=true
            startslide.setTitle("停止", for: .normal)
            
        }else{
            timer.invalidate()
            timer=nil
            nextbutton.isHidden=false
            backbutton.isHidden=false
            startslide.setTitle("再生", for: .normal)        }
    }
    
    @objc func Slide() {
        if(i==4){
            i=1
        }else{
            i=i+1
        }
        if i==2{
            imageView.image=b
        }else if i==3{
            imageView.image=c
        }else if i==4{
            imageView.image=d
        }else if i==1{
            imageView.image=a
        }
        
        }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
       
        var resultViewController:ResultViewController=segue.destination as! ResultViewController
       
    
    if i==2{
        resultViewController.x=2
    }else if i==3{
        resultViewController.x=3
        
    }else if i==4{
        resultViewController.x=4
        
    }else if i==1{
        resultViewController.x=1
        
    }
    
        
    }
        
    
}

