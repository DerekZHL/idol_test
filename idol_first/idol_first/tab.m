//
//  tab.m
//  idol_first
//
//  Created by wustcs-17 on 2019/3/17.
//  Copyright © 2019 wustcs-17. All rights reserved.
//

#import "tab.h"

@implementation tab

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init
{
    self=[super init];
    if(!self) return nil;
    
    //姓名
    UILabel *user_name = [[UILabel alloc]init];
    user_name.frame = CGRectMake(100, 200, 100, 100);
    user_name.text = @"姓名";
    user_name.font = [UIFont systemFontOfSize:30];
    
    
    return self;
}
@end
