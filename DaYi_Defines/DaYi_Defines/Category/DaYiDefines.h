
#define Screen_width [UIScreen mainScreen].bounds.size.width
#define Screen_height [UIScreen mainScreen].bounds.size.height
#define ApplicationWindow [UIApplication sharedApplication].keyWindow
//自己的版本号
#define VersionString [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define NavHeight (Screen_height == 812.0 ? 88 : 64)
#define NavHeightNew 44
#define TabbarHeight 49
#define iphonexHeight (Screen_height == 812.0 ? 24 : 0)
#define iphonexStatusHeight (Screen_height == 812.0 ? 44 : 20)

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

#ifndef weakify
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#endif

#ifndef strongify
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#endif

/*
 ------------------------app内发通知---------------
 */
//上一级刷新数据
typedef void(^DYRefesh)(void);
typedef void(^DaYiBlock)(id data);

typedef void(^successHandler)(id data);
typedef void(^errorHandler)(id data);
typedef void(^failHandler)(id error);

/*
 -----------------------颜色-----------------------
 */
#define UIColorOrange               [UIColor colorWithHex:0xff8601]
#define UIColorBlueDarken           [UIColor colorWithHex:0x4782e9]
#define UIColorBlueLighten          [UIColor colorWithHex:0x2e9ef5]

/*
 -----------------------默认图片-----------------------
 */

#define DEFAULTIMAGE [UIImage imageNamed:@"default_noimg"]

#define SUCCESS @"DaYi_success"
#define FAIL @"DaYi_fail"
#define AUTHORIZATION @"DaYi_authorization"
