//
//  BigIndenticonViewController.h
//  IndenticonDemo
//
//  Created by John Hill on 5/31/14.
//  Copyright (c) 2014 John Hill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IdenticonView.h"

@interface BigIndenticonViewController : UIViewController {
    IBOutlet UITextField *m_indenticonCodeView;
    IBOutlet IdenticonView *m_identiconView;
}

-(IBAction)changeIdenticon:(id)sender;
-(IBAction)randomCode:(id)sender;

@end
