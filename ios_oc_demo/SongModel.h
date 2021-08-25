//
//  NSObject+SongModel.h
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/6/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SongModel:NSObject

@property(strong, nonatomic) NSString *songName;
@property(strong, nonatomic) NSString *singerName;
@property(readwrite, assign) NSInteger index;

- (SongModel*) initWithValue:(NSInteger)index songName:(NSString *)songName singerName:(NSString *)singerName;

@end

NS_ASSUME_NONNULL_END
