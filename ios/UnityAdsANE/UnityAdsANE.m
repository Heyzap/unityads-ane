//
//  UnityAdsANE.m
//  UnityAdsANE
//
//  Copyright (c) 2015 Heyzap. All rights reserved.
//

#import "UnityAdsANE.h"
#import "FlashRuntimeExtensions.h"

void UnityAdsANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                   uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet) {
    
    static FRENamedFunction functionMap[] = {};
    *numFunctionsToSet = sizeof(functionMap) / sizeof(FRENamedFunction);
    *functionsToSet = functionMap;
}

void UnityAdsANEContextFinalizer(FREContext ctx) {
    return;
}

void UnityAdsANEInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                            FREContextFinalizer* ctxFinalizerToSet) {
    *extDataToSet = NULL;
    *ctxInitializerToSet = &UnityAdsANEContextInitializer;
    *ctxFinalizerToSet = &UnityAdsANEContextFinalizer;
}

void UnityAdsANEFinalizer(void* extData) {
    return;
}
