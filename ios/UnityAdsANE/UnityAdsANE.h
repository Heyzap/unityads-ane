//
//  UnityAdsANE.h
//  UnityAdsANE
//
//  Copyright (c) 2015 Heyzap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlashRuntimeExtensions.h"

void UnityAdsANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                   uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet);

void UnityAdsANEContextFinalizer(FREContext ctx);

void UnityAdsANEExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                               FREContextFinalizer* ctxFinalizerToSet);

void UnityAdsANEFinalizer(void* extData);
