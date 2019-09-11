//
//  MainStartScreenViewController.swift
//  SociaalVerhaalApp
//
//  Created by Michiel Everts on 05/12/2018.
//  Copyright © 2018 Michiel Everts. All rights reserved.
//

import Foundation
import UIKit
import BWWalkthrough

class MainStartScreenViewController: UIViewController, BWWalkthroughViewControllerDelegate {
    
    var needWalkthrough:Bool = true
    var walkthrough: BWWalkthroughViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if needWalkthrough {
            self.presentWalkthrough()
        }
    }
    
    @IBAction func presentWalkthrough() {
        
        let stb = UIStoryboard(name: "WalkthroughContainer", bundle: nil)
        walkthrough = stb.instantiateViewController(withIdentifier: "BWWalkthroughContainer") as? BWWalkthroughViewController
        let page_one = stb.instantiateViewController(withIdentifier: "Page1")
        let page_two = stb.instantiateViewController(withIdentifier: "Page2")
        let page_three = stb.instantiateViewController(withIdentifier: "Page3")
        let page_four = stb.instantiateViewController(withIdentifier: "Page4")
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.add(viewController: page_one)
        walkthrough.add(viewController: page_two)
        walkthrough.add(viewController: page_three)
        walkthrough.add(viewController: page_four)
        
        self.present(walkthrough, animated: true) {
            ()->() in
            self.needWalkthrough = false
        }
    }
}



extension MainStartScreenViewController{
    
    func walkthroughCloseButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func walkthroughPageDidChange(pageNumber: Int) {
        if (self.walkthrough.numberOfPages - 1) == pageNumber{
            self.walkthrough.closeButton?.isHidden = false
        }else{
            self.walkthrough.closeButton?.isHidden = true
        }
    }
    
}
