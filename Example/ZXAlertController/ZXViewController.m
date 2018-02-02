//
//  ZXViewController.m
//  ZXAlertController
//
//  Created by tianlunyuche on 02/02/2018.
//  Copyright (c) 2018 tianlunyuche. All rights reserved.
//

#import "ZXViewController.h"
#import "ZXAlertController.m"

@interface ZXViewController ()
@property (nonatomic, strong) ZXAlertController *alertVC;
@end

@implementation ZXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    for (int i =1; i<15; i++) {
        ZXAlertAction *action =[ZXAlertAction actionWithTitle:@"好的" style:ZXAlertActionStyleDestructive handler:^(ZXAlertAction * _Nullable action) {
            NSLog(@"可以的");
        }];
        [self.alertVC addAction:action];
    }
    
    ZXAlertAction *action2 =[ZXAlertAction actionWithTitle:@"取消" style:ZXAlertActionStyleCancel handler:nil];
    action2.enabled =NO;
    
    [_alertVC addAction:action2];
    [_alertVC show];
}

-(ZXAlertController *)alertVC{
    if (!_alertVC) {
        _alertVC = [ZXAlertController alertControllerWithTitle:nil message:nil preferredStyle:ZXAlertControllerStyleActionSheet];
        //        _alertVC.backgroundViewEffect = ZXBackgroundViewBlurEffect;
    }
    return _alertVC;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
