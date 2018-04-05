//
//  ViewController.m
//  HonorSoldiers
//
//  Created by Markandaiya Harsha on 04/04/18.
//  Copyright © 2018 markandaiya. All rights reserved.
//

#import "ViewController.h"
#import "SoldierData.h"

@interface ViewController (){
    
    
    IBOutlet UIImageView *imageVSoldier;
    IBOutlet UILabel *lblName;
    IBOutlet UILabel *lblPlaceOfBirth;
    IBOutlet UILabel *lblServiceUnit;
    //
    IBOutlet UILabel *lblConflict;
    IBOutlet UILabel *lblServiceNo;
    IBOutlet UILabel *lblKilledInAction;
    //
    IBOutlet UILabel *lblPlaceOfElistment;
    IBOutlet UILabel *lblLocalityOfElistment;
    
    NSArray *arrAllData ;
    NSTimer *timer;
    int count;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    count = 0;
    arrAllData = [[SoldierData commonInit] allData];
    [self setTimer];
}

#pragma mark - IBAction
- (IBAction)btnSearchTapped:(UIButton *)sender {
    
}

#pragma mark - Setup

-(void)setTimer{
    NSDate *d = [NSDate dateWithTimeIntervalSinceNow: 6.0];
    timer = [[NSTimer alloc] initWithFireDate:d interval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:false];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

-(void)setDataInView{
    NSDictionary *dict = arrAllData[count];
    
    [lblName setText:dict[kName]];
    [lblServiceUnit setText:dict[kUnit]];
    [lblConflict setText:dict[kConflict]];
    [lblKilledInAction setText:dict[kKilled]];
    [lblPlaceOfBirth setText:dict[kBirthPlace]];
    [lblServiceNo setText:dict[kServiceNumber]];
    [lblLocalityOfElistment setText:dict[kLocality]];
    [lblPlaceOfElistment setText:dict[kElistmentPlace]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
