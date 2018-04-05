//
//  SoldierData.h
//  HonorSoldiers
//
//  Created by Markandaiya Harsha on 04/04/18.
//  Copyright © 2018 markandaiya. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kConflict       @"Conflict"
#define kKilled         @"Killed in Action"
#define kLocality       @"Locality on Enlistment"
#define kName           @"Name"
#define kBirthPlace     @"Place of Birth"
#define kElistmentPlace @"Place of Enlistment"
#define kServiceNumber  @"Service Number"
#define kUnit           @"Service Unit/s"

@interface SoldierData : NSObject

+(SoldierData *)commonInit;
-(id)init;

@property (nonatomic,retain) NSArray *allData;
@property (nonatomic) NSInteger currentIndex;

@end
 
