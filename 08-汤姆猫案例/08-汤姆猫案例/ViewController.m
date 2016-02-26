//
//  ViewController.m
//  08-汤姆猫案例
//
//  Created by Sunshine on 15/12/14.
//  Copyright © 2015年 Sunshine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgViewCat;
- (IBAction)drink;
- (IBAction)fart;
- (IBAction)knockout;




@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//喝牛奶的动画
- (IBAction)drink {
     //0.动态加载图片到一个NSArray中
    NSMutableArray *arryM = [NSMutableArray array];
    
        for (int i =0 ; i < 81; i ++) {
            //拼接图片名称
            NSString *imgName =[NSString stringWithFormat:@"drink_%02d.jpg",i];
            
            //根据图片名称加载图片
            UIImage *imgCat = [UIImage imageNamed:imgName];
            
            //把图片加载到数组中
            [arryM addObject:imgCat];
            

    }
    
    //1.设置UIImageView（图片框）的 animationImages属性，这个属性包含的就是所有要执行动画的图片
    self.imgViewCat.animationImages = arryM;
    
    //2.设置动画持续时间
    self.imgViewCat.animationDuration = self.imgViewCat.animationImages.count * 0.08;
    
    //3.设置动画是否需要重复播放
    self.imgViewCat.animationRepeatCount = 1;
    
    //4.开启动画
    [self.imgViewCat startAnimating];
    
}

//加屁
- (IBAction)fart {
    //1.把图片加载到数组中
    NSMutableArray *arryM = [NSMutableArray array];
    
    for (int  i = 0; i < 28; i ++) {
        NSString *imgName = [NSString stringWithFormat:@"fart_%02d",i];
        UIImage *imgCat = [UIImage imageNamed:imgName];
        
        [arryM addObject:imgCat];
    }
    
    //2.设置UIView 的animationImages属性，包含所有执行动画的图片
    
    self.imgViewCat.animationImages = arryM;
    
    //3.设置动画时间
    self.imgViewCat.animationDuration = arryM.count * 0.1;
 
    //4.设置动画播放次数
    self.imgViewCat.animationRepeatCount = 1;
    
    //5.开启动画
    [self.imgViewCat startAnimating];
}

- (IBAction)knockout {
    //1.把图片加载到数组中
    NSMutableArray *arryM = [NSMutableArray array];
    
    for (int  i = 0; i < 81; i ++) {
        NSString *imgName = [NSString stringWithFormat:@"knockout_%02d",i];
        UIImage *imgCat = [UIImage imageNamed:imgName];
        
        [arryM addObject:imgCat];
    }
    
    //2.设置UIView 的animationImages属性，包含所有执行动画的图片
    
    self.imgViewCat.animationImages = arryM;
    
    //3.设置动画时间
    self.imgViewCat.animationDuration = arryM.count * 0.1;
    
    //4.设置动画播放次数
    self.imgViewCat.animationRepeatCount = 1;
    
    //5.开启动画
    [self.imgViewCat startAnimating];
    
}



@end





 
