//
//  HomepageControllerViewController.h
//  TipCalculator
//
//  Created by Aniket Ajagaonkar on 9/4/14.
//  Copyright (c) 2014 Aniket Ajagaonkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController

    @property(nonatomic,strong) IBOutlet UITextField * billAmount;
    @property(nonatomic,strong) IBOutlet UILabel * totalAmount;
    @property(nonatomic,strong) IBOutlet UILabel * splitByTwo;
    @property(nonatomic,strong) IBOutlet UILabel * splitByThree;
    @property(nonatomic,strong) IBOutlet UILabel * splitByFour;
    
@end
