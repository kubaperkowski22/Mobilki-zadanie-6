//
//  ViewController.m
//  baner
//
//  Created by student on 14/11/2023.
//  Copyright © 2023 sm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    [_image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
}

- (IBAction) click {
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle
                                     :NSLocalizedString(@"Information", nil)
                                     message:[NSString stringWithFormat:NSLocalizedString(@"Desc", nil),4]preferredStyle:UIAlertControllerStyleAlert];
    
UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}


@end
