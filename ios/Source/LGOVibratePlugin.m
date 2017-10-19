//
//  LGOVibratePlugin.m
//  plugin

#import "LGOVibratePlugin.h"
#import <LEGO-SDK/LGOCore.h>
#import <AudioToolbox/AudioToolbox.h>
@interface LGOVibrateRequest: LGORequest



@end

@implementation LGOVibrateRequest

@end

@interface LGOVibrateResponse: LGOResponse



@end

@implementation LGOVibrateResponse

- (NSDictionary *)resData {
    return @{
             
             };
}

@end

@interface LGOVibrateperation: LGORequestable

@property (nonatomic, strong) LGOVibrateRequest *request;

@end

@implementation LGOVibrateperation

- (LGOResponse *)requestSynchronize {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    return [[LGOVibrateResponse new] accept:nil];
}

- (void)requestAsynchronize:(LGORequestableAsynchronizeBlock)callbackBlock {
    callbackBlock([self requestSynchronize]);
}

@end

@implementation LGOVibratePlugin

- (LGORequestable *)buildWithDictionary:(NSDictionary *)dictionary context:(LGORequestContext *)context {
    LGOVibrateperation *operation = [LGOVibrateperation new];
    operation.request = [LGOVibrateRequest new];
    
    return operation;
}

- (LGORequestable *)buildWithRequest:(LGORequest *)request {
    if ([request isKindOfClass:[LGOVibrateRequest class]]) {
        LGOVibrateperation *operation = [LGOVibrateperation new];
        operation.request = (LGOVibrateRequest *)request;
        return operation;
    }
    return nil;
}

+ (void)load {
    [[LGOCore modules] addModuleWithName:@"Plugin.Vibrate" instance:[self new]];
}

@end
