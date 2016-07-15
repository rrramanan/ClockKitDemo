//
//  ComplicationController.m
//  comps WatchKit Extension
//
//  Created by Vinod Ramanathan on 06/07/16.
//  Copyright © 2016 Vinod Ramanathan. All rights reserved.
//

#import "ComplicationController.h"

@interface ComplicationController ()

@end

@implementation ComplicationController

#pragma mark - Timeline Configuration

- (void)getSupportedTimeTravelDirectionsForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTimeTravelDirections directions))handler {
    handler(CLKComplicationTimeTravelDirectionForward|CLKComplicationTimeTravelDirectionBackward);
}

- (void)getTimelineStartDateForComplication:(CLKComplication *)complication withHandler:(void(^)(NSDate * __nullable date))handler {
    handler(nil);
}

- (void)getTimelineEndDateForComplication:(CLKComplication *)complication withHandler:(void(^)(NSDate * __nullable date))handler {
    handler(nil);
}

- (void)getPrivacyBehaviorForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationPrivacyBehavior privacyBehavior))handler {
    handler(CLKComplicationPrivacyBehaviorShowOnLockScreen);
}

#pragma mark - Timeline Population

- (void)getCurrentTimelineEntryForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTimelineEntry * __nullable))handler {
    // Call the handler with the current timeline entry
    
    CLKComplicationTemplateModularSmallSimpleText  *modSmall = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
   // modSmall.textProvider = [CLKSimpleTextProvider textProviderWithText:@"MUFC"shortText:@"MUFC"];
     modSmall.textProvider = [CLKSimpleTextProvider textProviderWithText:@"MUFC"];
    CLKComplicationTimelineEntry *mainEntry = [CLKComplicationTimelineEntry entryWithDate:[NSDate date] complicationTemplate:modSmall];
    
    handler(mainEntry);
}

- (void)getTimelineEntriesForComplication:(CLKComplication *)complication beforeDate:(NSDate *)date limit:(NSUInteger)limit withHandler:(void(^)(NSArray<CLKComplicationTimelineEntry *> * __nullable entries))handler {
    // Call the handler with the timeline entries prior to the given date
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM1 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM1.textProvider = [CLKSimpleTextProvider textProviderWithText:@"LVG"];
    CLKComplicationTimelineEntry *TMEntry1 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:-8000] complicationTemplate:modSM1];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM2 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM2.textProvider = [CLKSimpleTextProvider textProviderWithText:@"was"];
    CLKComplicationTimelineEntry *TMEntry2 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:-9250] complicationTemplate:modSM2];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM3 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM3.textProvider = [CLKSimpleTextProvider textProviderWithText:@"RED"];
    modSM3.tintColor = [UIColor greenColor];
    CLKComplicationTimelineEntry *TMEntry3 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:-70030] complicationTemplate:modSM3];
    
   
    
    
    
    NSArray *loadOLDTM = @[TMEntry1,TMEntry2,TMEntry3];

    handler(loadOLDTM);
}

- (void)getTimelineEntriesForComplication:(CLKComplication *)complication afterDate:(NSDate *)date limit:(NSUInteger)limit withHandler:(void(^)(NSArray<CLKComplicationTimelineEntry *> * __nullable entries))handler {
    // Call the handler with the timeline entries after to the given date
    
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM1 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM1.textProvider = [CLKSimpleTextProvider textProviderWithText:@"is"];
    CLKComplicationTimelineEntry *TMEntry1 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:10] complicationTemplate:modSM1];
    
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM2 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM2.textProvider = [CLKSimpleTextProvider textProviderWithText:[NSString stringWithFormat:@"%C",0x2764]];
    CLKComplicationTimelineEntry *TMEntry2 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:20] complicationTemplate:modSM2];

    CLKComplicationTemplateModularSmallSimpleText  *modSM3 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM3.textProvider = [CLKSimpleTextProvider textProviderWithText:@"Ibra"];
    CLKComplicationTimelineEntry *TMEntry3 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:30] complicationTemplate:modSM3];

    CLKComplicationTemplateModularSmallSimpleText  *modSM4 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM4.textProvider = [CLKSimpleTextProvider textProviderWithText:@"is"];
    CLKComplicationTimelineEntry *TMEntry4 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:40] complicationTemplate:modSM4];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM5 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM5.textProvider = [CLKSimpleTextProvider textProviderWithText:@"RED"];
    modSM5.tintColor = [UIColor redColor];
    CLKComplicationTimelineEntry *TMEntry5 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:50] complicationTemplate:modSM5];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM6 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM6.textProvider = [CLKSimpleTextProvider textProviderWithText:@"Jose"];
    CLKComplicationTimelineEntry *TMEntry6 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:86400] complicationTemplate:modSM6];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM7 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM7.textProvider = [CLKSimpleTextProvider textProviderWithText:@"is"];
    CLKComplicationTimelineEntry *TMEntry7 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:90000] complicationTemplate:modSM7];
    
    CLKComplicationTemplateModularSmallSimpleText  *modSM8 = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
    modSM8.textProvider = [CLKSimpleTextProvider textProviderWithText:@"RED"];
    modSM8.tintColor = [UIColor redColor];
    CLKComplicationTimelineEntry *TMEntry8 = [CLKComplicationTimelineEntry entryWithDate:[NSDate dateWithTimeIntervalSinceNow:95400] complicationTemplate:modSM8];
    

    
    NSArray *loadTMEntry = @[TMEntry1,TMEntry2,TMEntry3,TMEntry4,TMEntry5,TMEntry6,TMEntry7,TMEntry8];
    
    handler(loadTMEntry);
}

#pragma mark - Placeholder Templates

- (void)getLocalizableSampleTemplateForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTemplate * __nullable complicationTemplate))handler {
    // This method will be called once per supported complication, and the results will be cached
    
    switch (complication.family) {
        case CLKComplicationFamilyModularSmall:
        {
            CLKComplicationTemplateModularSmallSimpleText  *modSmallPH = [[CLKComplicationTemplateModularSmallSimpleText alloc]init];
            modSmallPH.textProvider = [CLKSimpleTextProvider textProviderWithText:@"comp"];
            handler(modSmallPH);
            break;
        }
        default:
            break;
    }
    
    
    
}

@end
