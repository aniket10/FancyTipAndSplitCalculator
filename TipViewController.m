//
//  TipViewController.m
//  TipCalculator
//
//  Created by Aniket Ajagaonkar on 9/4/14.
//  Copyright (c) 2014 Aniket Ajagaonkar. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()


@end

@implementation TipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Cheque Please";
        self.tipPercent = @[@(0.1),@(0.15),@(0.2)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.billAmount.delegate = self;
    self.billAmount.becomeFirstResponder;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (IBAction)DoneEditing:(id)sender {
    
    [self.view endEditing:YES];
    [self updateBillAmount];
}
- (IBAction)getNewTip:(id)sender {
    [self updateBillAmount];
}

- (void) updateBillAmount{
    
    float bill = [self.billAmount.text floatValue];
    
    if (bill == 0) {
        self.totalAmount.text=@"Total Bill";
        self.splitByTwo.text=@"Split by 2";
        self.splitByThree.text=@"Split by 3";
        self.splitByFour.text=@"Split by 4";
    }
    else {
        float tip = [self.tipPercent [self.tipPercentage.selectedSegmentIndex] floatValue];
    
        float total = bill * (1+tip);
        float split2 = total / 2;
        float split3 = total / 3;
        float split4 = total / 4;
    
        self.totalAmount.text=[NSString stringWithFormat:@"$%0.2f", total];
        self.splitByTwo.text=[NSString stringWithFormat:@"$%0.2f",split2];
        self.splitByThree.text=[NSString stringWithFormat:@"$%0.2f",split3];
        self.splitByFour.text=[NSString stringWithFormat:@"$%0.2f",split4];
    }
    
}

@end
