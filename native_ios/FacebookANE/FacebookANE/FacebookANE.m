//
//  FacebookANE.m
//  FacebookANE
//
//  Created by Daniel Rhodes on 2/16/15.
//  Copyright (c) 2015 Heyzap. All rights reserved.
//

#import "FacebookANE.h"
#import "FlashRuntimeExtensions.h"
#import <FBAudienceNetwork/FBAudienceNetwork.h>

/** context lifecycle methods */

void FacebookANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet) {
    
    static FRENamedFunction functionMap[] = {};
    *numFunctionsToSet = sizeof(functionMap) / sizeof(FRENamedFunction);
    *functionsToSet = functionMap;
}

void FacebookANEContextFinalizer(FREContext ctx) {
    // context clean up
    return;
}


/** extension lifecycle methods */

void FacebookANEInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet) {
    *extDataToSet = NULL;
    *ctxInitializerToSet = &FacebookANEContextInitializer;
    *ctxFinalizerToSet = &FacebookANEContextFinalizer;
}

void FacebookANEFinalizer(void* extData) {
    // ext cleanup -- no call guarantee
    return;
}
