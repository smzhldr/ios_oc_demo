//
//  NSObject+SongModel.m
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/6/20.
//

#import "SongModel.h"

@implementation SongModel

- (SongModel*)initWithValue:(NSInteger)index songName:(NSString *)songName singerName:(NSString *)singerName {
    self.index = index;
    self.singerName = singerName;
    self.songName = songName;
    return  self;
}
@end
