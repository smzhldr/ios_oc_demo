//
//  NSObject+MediaManager.h
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/6/19.
//

#import <Foundation/Foundation.h>
#import "SongModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MediaManager: NSObject{
    
}

+ (MediaManager *) getInstance;
- (NSArray<SongModel*> *) loadLocalSong;

@end

NS_ASSUME_NONNULL_END
