//
//  ViewController.m
//  idol_first
//
//  Created by wustcs-17 on 2019/3/5.
//  Copyright © 2019 wustcs-17. All rights reserved.
//

#import "ViewController.h"
#import "tab.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //背景图片
   UIImageView *mainbac=[[UIImageView alloc]initWithFrame:self.view.bounds];
   mainbac.image =[UIImage imageNamed:@"login"];
  [self.view addSubview:mainbac];
    
//    //添加UIview模块
//    UIView *tab = [[UIView alloc]initWithFrame:CGRectMake(16, 240, 385, 650)];
//    tab.backgroundColor =[UIColor whiteColor];
//    //添加view的圆角
//    tab.layer.cornerRadius = 10;
//    tab.layer.masksToBounds = YES;
//    [self.view addSubview:tab];
    
    UIView *_tab = [[tab alloc]init];
    _tab.frame = CGRectMake(16, 240, 385, 650);
    _tab.backgroundColor = [UIColor whiteColor];
    _tab.layer.cornerRadius = 10;
    _tab.layer.masksToBounds = YES;
    [self.view addSubview:_tab];
    //头像
    UIButton *head = [[UIButton alloc]init];
    head.frame = CGRectMake(130, 200, 150, 150);
    head.backgroundColor = [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    head.layer.cornerRadius=75;
    [self.view addSubview:head];
    
    //姓名
    UILabel *user_name = [[UILabel alloc]init];
    user_name.frame = CGRectMake(55, 400, 70, 100);
    user_name.text = @"姓 名:";
    user_name.font = [UIFont systemFontOfSize:21];
    UITextField *_name=[[UITextField alloc]initWithFrame:CGRectMake(115, 400, 500, 100)];
    [_name becomeFirstResponder];
    _name.keyboardType = UIKeyboardTypeDefault;
    UIView *name_= [[UIView alloc]initWithFrame:CGRectMake(45, 425, 330, 50)];
    name_.backgroundColor = [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    name_.layer.cornerRadius=10;
    [self.view addSubview:name_];
    [self.view addSubview:user_name];
    [self.view addSubview:_name];
    
    //性别
    UILabel *sex = [[UILabel alloc]init];
    sex.frame = CGRectMake(55, 475, 70, 100);
    sex.text = @"性 别:";
    sex.font = [UIFont systemFontOfSize:21];
    UITextField *_sex = [[UITextField alloc]initWithFrame:CGRectMake(115, 475, 500, 100)];
    UIView *sex_= [[UIView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width-370,[[UIScreen mainScreen]bounds].size.height-395, 330, 50)];
    sex_.backgroundColor= [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    sex_.layer.cornerRadius=10;
    [self.view addSubview:sex_];
    [self.view addSubview:sex];
    [self.view addSubview:_sex];
    
    //年龄
    UILabel *age = [[UILabel alloc]init];
    age.frame = CGRectMake(55, 550, 70, 100);
    age.text = @"年 龄:";
    age.font = [UIFont systemFontOfSize:21];
    UITextField *_age = [[UITextField alloc]initWithFrame:CGRectMake(115, 550, 500, 100)];
    UIView *age_= [[UIView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width-370,[[UIScreen mainScreen]bounds].size.height-315, 330, 50)];
    age_.backgroundColor= [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    age_.layer.cornerRadius=10;
    [self.view addSubview:age_];
    [self.view addSubview:age];
    [self.view addSubview:_age];

    //职业
    UILabel *career = [[UILabel alloc]init];
    career.frame = CGRectMake(55, 635, 70, 100);
    career.text = @"职 业:";
    career.font = [UIFont systemFontOfSize:21];
    UITextField *_career = [[UITextField alloc]initWithFrame:CGRectMake(115,635, 500, 100)];
    UIView *career_= [[UIView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width-370,[[UIScreen mainScreen]bounds].size.height-235, 330, 50)];
    career_.backgroundColor= [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    career_.layer.cornerRadius=10;
    [self.view addSubview:career_];
    [self.view addSubview:career];
    [self.view addSubview:_career];
    
    //手机号
    UILabel *phone_number = [[UILabel alloc]init];
    phone_number.frame = CGRectMake(55, 715, 90, 100);
    phone_number.text = @"手 机 号:";
    phone_number.font = [UIFont systemFontOfSize:21];
    UITextField *_phone_number = [[UITextField alloc]initWithFrame:CGRectMake(133, 715, 500, 100)];
    UIView *phone_number_= [[UIView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width-370,[[UIScreen mainScreen]bounds].size.height-155, 330, 50)];
    phone_number_.backgroundColor= [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:178];
    phone_number_.layer.cornerRadius=10;
    [self.view addSubview:phone_number_];
    [self.view addSubview:phone_number];
    [self.view addSubview:_phone_number];

    //登录
    UIButton *login = [[UIButton alloc]initWithFrame:CGRectMake(110, 815, 200, 50)];
    login.backgroundColor = [UIColor colorWithRed:240/256.0 green:240/256.0 blue:240/256.0 alpha:170];
    [login setTitle:@"注册" forState:UIControlStateNormal];
    login.layer.cornerRadius  = 15;
    [login addTarget:self action:@selector(click_login) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:login];

    self.view.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fingerTapped:)];
    
    [self.view addGestureRecognizer:singleTap];
    
    
}
////登录点击事件
//-(void) click_login
//{
//    [self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:YES];
//}



//键盘收回
-(BOOL) textFieldShouldReturn:(UITextField *)textField {

    [textField canResignFirstResponder];

    return YES;

}
-(void)fingerTapped:(UITapGestureRecognizer *)gestureRecognizer

{
    
    [self.view endEditing:YES];
    
}

@end
