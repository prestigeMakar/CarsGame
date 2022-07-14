//
//  ViewController.swift
//  CarsGame
//
//  Created by Артем Макаренко on 30.06.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let holeImageView4 = UIImageView()
    let squareView = UIView()

    
    override   func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        
        
        
        let squareView = UIView()
        squareView.frame = CGRect(x: view.center.x - 120,
                                  y: 0,
                                  width: 240,
                                  height: UIScreen.main.bounds.height)
        squareView.backgroundColor = .lightGray
        
        view.addSubview(squareView)
        
        
        
        

        let leftStripe: UIView = UIView()
        leftStripe.frame = CGRect(x: view.center.x + 2.5,
                                  y: 0,
                                  width: -7.5,
                                  height: view.bounds.height)
        
        leftStripe.backgroundColor = .white
        
        
        
        let carImage = UIImage(named: "car")
        
        let carX = squareView.center.x + 20
        
        let carY = UIScreen.main.bounds.maxY - 100
        
        let carImageView = UIImageView(frame: CGRect(x: carX, y: carY, width: 80, height: 40))
        carImageView.image = carImage
        carImageView.transform = CGAffineTransform(rotationAngle: -89.56)
    

       
        
        
        let holeImage1 = UIImage(named: "яма")
        let holeImageView1 = UIImageView(frame: CGRect(x: squareView.bounds.minX, y: 50, width: 50, height: 50))
        holeImageView1.image = holeImage1
        
    
        
        let holeImage2 = UIImage(named: "яма")
        let holeImageView2 = UIImageView(frame: CGRect(x: squareView.bounds.minX + 30, y: 320, width: 50, height: 50))
        holeImageView2.image = holeImage2
        
       
        
        let holeImage3 = UIImage(named: "яма")
        let holeImageView3 = UIImageView(frame: CGRect(x: squareView.bounds.minX + 160, y: 580, width: 50, height: 50))
        holeImageView3.image = holeImage3
        
        
        
        let holeImage4 = UIImage(named: "яма")
        let holeImageView4 = UIImageView(frame: CGRect(x: squareView.bounds.minX + 140, y: 180, width: 50, height: 50))
        holeImageView4.image = holeImage4
        
        
        
        view.addSubview(leftStripe)
        view.addSubview(carImageView)
        squareView.addSubview(holeImageView1)
        squareView.addSubview(holeImageView2)
        squareView.addSubview(holeImageView3)
        squareView.addSubview(holeImageView4)
        
        movingHole()
    
    }
    
     func movingHole() {
         UIView.animate(withDuration: 3.0, animations: {
            self.holeImageView4.frame = CGRect(x: self.squareView.bounds.minX + 140, y: 180, width: 50, height: 50)
            
        }, completion:
                { done in
            if done {
                self.step2()
            }
            })
    }
    func step2() {
        UIView.animate(withDuration: 3.0, animations: {
            self.holeImageView4.frame = CGRect(x: self.squareView.bounds.minX + 140, y: 380, width: 50, height: 50
                                               
            )}, completion:
                { done in
            self.movingHole()
            })
    }
    

}
