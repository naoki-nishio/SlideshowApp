//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 中西八洋 on 2021/08/15.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    var x:Int = 0
    
    var ra : UIImage!
    var rb : UIImage!
    var rc : UIImage!
    var rd : UIImage!
    
    var transRotate = CGAffineTransform()
    
    
    let rect:CGRect = CGRect(x:0, y:100, width:500, height:800)
    override func viewDidLoad() {
        super.viewDidLoad()
        ra = UIImage(named:"show1")
        rb = UIImage(named:"show2")
        rc = UIImage(named:"show3")
        rd = UIImage(named:"show4")
        
        
        
        if x==1{
            image.image=ra
            //image.frame=rect
            let angle = 270 * CGFloat.pi / 180
               transRotate = CGAffineTransform(rotationAngle: CGFloat(angle));
               image.transform = transRotate
            image.frame=rect
        }else if x==2{
            image.image=rb
            //image.frame=rect
            let angle = 270 * CGFloat.pi / 180
               transRotate = CGAffineTransform(rotationAngle: CGFloat(angle));
               image.transform = transRotate
            image.frame=rect
        }else if x==3{
            image.image=rc
            let angle = 270 * CGFloat.pi / 180
               transRotate = CGAffineTransform(rotationAngle: CGFloat(angle));
               image.transform = transRotate
            image.frame=rect
        }else if x==4{
            image.image=rd
            let angle = 270 * CGFloat.pi / 180
               transRotate = CGAffineTransform(rotationAngle: CGFloat(angle));
               image.transform = transRotate
            image.frame=rect
        }
        // Do any additional setup after loading the view.
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
