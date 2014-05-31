//
//  SearchResultCell.m
//  IndenticonDemo
//
//  Created by John Hill on 5/31/14.
//  Copyright (c) 2014 John Hill. All rights reserved.
//

#import "SearchResultCell.h"

@implementation SearchResultCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setText:(NSString *)text {
    [m_caption setText:text];
    
    // A simple hashing function to get a pseudorandom 32 bit integer from a string
    
    unsigned char *ptr = (unsigned char *)[text UTF8String];
    long crc = 0xB704CEL;
    for (int i = 0; i < [text length]; i++) {
        crc ^= (*(ptr+i)) << 16;
        for (int j = 0; j < 8; j++) {
            crc <<= 1;
            if (crc & 0x1000000) {
                crc ^= 0x1864CFBL;
            }
        }
    }
    crc &= 0xFFFFFFL;
    
    [m_identiconCode setText:[NSString stringWithFormat:@"%ld",crc]];
    [m_identiconView setIdenticonCode:crc];
}

@end
