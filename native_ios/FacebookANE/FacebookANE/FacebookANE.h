//
//  FacebookANE.h
//  FacebookANE
//
//  Created by Daniel Rhodes on 2/16/15.
//  Copyright (c) 2015 Heyzap. All rights reserved.
//

#import "FlashRuntimeExtensions.h"

void FacebookANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet);

void FacebookANEContextFinalizer(FREContext ctx);

void FacebookANEExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet);

void FacebookANEFinalizer(void* extData);
