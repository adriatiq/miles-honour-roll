//
//  SoldierData.m
//  HonorSoldiers
//
//  Created by Markandaiya Harsha on 04/04/18.
//  Copyright © 2018 markandaiya. All rights reserved.
//

#import "SoldierData.h"
static SoldierData *data ;
@implementation SoldierData

+(SoldierData *)commonInit
{
    if (!data) {
        data = [[SoldierData alloc] init];
    }
    return data;
}

-(id)init
{
    if ([super init]) {
        NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"] ];
        NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil ];
        self.allData = [[NSArray alloc]initWithArray: dataDictionary[@"data"]];
        self.currentIndex = 0;
    }
    return self;
}


@end
