//
//  BigIndenticonViewController.m
//  IndenticonDemo
//
//  Created by John Hill on 5/31/14.
//  Copyright (c) 2014 John Hill. All rights reserved.
//

#import "BigIndenticonViewController.h"

@interface BigIndenticonViewController ()

@end

@implementation BigIndenticonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)changeIdenticon:(id)sender {
    NSInteger newIdenticonCode;
    NSScanner *textScanner = [NSScanner scannerWithString:[m_indenticonCodeView text]];
    
    [textScanner scanInteger:&newIdenticonCode];
    [m_indenticonCodeView resignFirstResponder];
    
    [m_identiconView setIdenticonCode:newIdenticonCode];
}

-(IBAction)randomCode:(id)sender {
    [m_indenticonCodeView resignFirstResponder];
    
    [m_indenticonCodeView setText:[NSString stringWithFormat:@"%ld",random()]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    srandom(time(0));
    NSInteger newIdenticonCode = random();
    
    [m_indenticonCodeView setText:[NSString stringWithFormat:@"%ld",(long)newIdenticonCode]];
    [m_identiconView setIdenticonCode:newIdenticonCode];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
}

*/
@end
