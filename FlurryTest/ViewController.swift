//
//  ViewController.swift
//  FlurryTest
//
//  Created by Jordan Baumgardner on 8/11/16.
//  Copyright © 2016 notius. All rights reserved.
//

import UIKit
import Flurry_iOS_SDK



class ViewController: UIViewController, FlurryAdBannerDelegate {
    // Initialize ad space to fetch ads from
    let adBanner = FlurryAdBanner(space: "ADSPACE");
    
    override func viewDidAppear(animated: Bool){
        super.viewDidAppear(animated);
        // Fetch and display banner ad for a given ad space
        adBanner.adDelegate = self;
        adBanner.fetchAdForFrame(self.view.frame)
    }
    
    override func viewDidDisappear(animated: Bool){
        super.viewDidDisappear(animated);
        // Do not set ad delegate to nil and do not remove ad in the ViewWillDisappear or ViewDidDisappear method
    }
    
    // Show whenever delegate is invoked
    func adBannerDidFetchAd(bannerAd: FlurryAdBanner!) {
        // Received Ad
        adBanner.displayAdInView(self.view, viewControllerForPresentation: self);
    }
    
}
