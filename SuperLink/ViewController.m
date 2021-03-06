//
//  ViewController.m
//  SuperLink
//
//  Created by xzm on 16/10/13.
//  Copyright © 2016年 ypwl. All rights reserved.
//

#import "ViewController.h"

@interface YPTextView : UITextView

@end

@implementation YPTextView

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
        
        UILongPressGestureRecognizer *longGesture = (UILongPressGestureRecognizer *)gestureRecognizer;
        
        if (longGesture.minimumPressDuration > 0.3) {
            
            return NO;
        }
    }
    
    return YES;
}

@end

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    NSLog(@"url :%@",URL);
    if ([[URL scheme] isEqualToString:@"userId"]) {
        NSString *username = [URL host];
        NSLog(@"userId :%@",username);
        return NO;
    }
    return YES;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * str = [NSString stringWithFormat:@"@张强  你就是一个逗比"];
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:str];
    NSRange urlRange = [str rangeOfString:@"@张强"];
    [string addAttribute:NSLinkAttributeName
                   value:[NSString stringWithFormat:@"userId://%@",@"100"]
                   range:urlRange];
    [string addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blueColor]
                   range:urlRange];
    [string addAttribute:NSUnderlineStyleAttributeName
                   value:@(NSUnderlineStyleNone)
                   range:urlRange];
    [string addAttribute:NSFontAttributeName
                   value:[UIFont systemFontOfSize:16]
                   range:NSMakeRange(0, str.length)];
    [string endEditing];
    
    YPTextView * textView = [[YPTextView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    textView.backgroundColor =[UIColor whiteColor];
    textView.delegate = self;
    [textView setEditable:NO];
    textView.attributedText = string;
    textView.dataDetectorTypes = UIDataDetectorTypeAll;
    [self.view addSubview:textView];


}
-(BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
