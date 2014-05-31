//
//  SearchResultCell.h
//  IndenticonDemo
//
//  Created by John Hill on 5/31/14.
//  Copyright (c) 2014 John Hill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IdenticonView.h"

@interface SearchResultCell : UITableViewCell {
    IBOutlet IdenticonView *m_identiconView;
    IBOutlet UILabel *m_caption;
    IBOutlet UILabel *m_identiconCode;
}

- (void) setText: (NSString *)text;

@end
