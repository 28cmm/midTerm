//
//  PageViewController.swift
//  test
//
//  Created by Yilei Huang on 2019-01-30.
//  Copyright © 2019 Joshua Fang. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource{
//    lazy var subViewControllers:[UIViewController] = {
//        return [
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController( withIdentifier: "ViewController1") as! ViewController1,
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController( withIdentifier: "ViewController2") as! ViewController2,
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController( withIdentifier: "ViewController3") as! ViewController3
//
//        ]
//    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.delegate = self
        self.dataSource = self

        let view = create()
        setViewControllers([view], direction: .forward, animated: true, completion: nil)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        let currentIndex:Int = subViewControllers.index(of: viewController) ?? 0
//        if(currentIndex <= 0){
//            return nil
//        }
//        return subViewControllers[currentIndex-1]
        let view = create()
        return view
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        let currentIndex:Int = subViewControllers.index(of: viewController) ?? 0
//        if(currentIndex >= subViewControllers.count-1){
//            return nil
//        }
//
//        return subViewControllers[currentIndex+1]
        let view = create()
        return view
    }
//    }
    
    
   
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return subViewControllers.count
//    }

    func create()->UIViewController{
        let randomNum = Int.random(in: 1...7)
        let controller = ViewController()
        controller.playVideo(num: randomNum)
        return controller
    }

}
