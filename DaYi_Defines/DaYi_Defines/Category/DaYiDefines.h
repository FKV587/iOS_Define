
#import <Foundation/Foundation.h>

#define ApplicationWindow [UIApplication sharedApplication].keyWindow
//自己的版本号
#define VersionString [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

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
typedef void(^DaYiBlock)(void);
typedef void(^DaYiBOOLBlock)(BOOL status);
typedef void(^DaYiBlock1)(id data);

typedef void(^successHandler)(id data);
typedef void(^errorHandler)(id data);
typedef void(^failHandler)(id error);


#define DYACCOUNTMAXLENGTH 11
#define MaxPickerSelectedImageCount 6
#define DYMargin UIEdgeInsetsMake(10, 15, 10, 15)
#define DYLoginLeftMargin 20.0
#define DYTableViewSectionHeight 10.0

#define DYMinPassWordLength 6
#define DYMaxPassWordLength 18
/*
 -----------------------颜色-----------------------
 */

#define UIColorOrange               [UIColor colorWithHex:0xff8601]
#define UIColorBlueDarken           [UIColor colorWithHex:0x4782e9]
#define UIColorBlueLighten          [UIColor colorWithHex:0x2e9ef5]
#define UIColorBlackDarken          [UIColor colorWithHex:0x34393f]
#define UIColorRedDarken            [UIColor colorWithHex:0xff3b30]

/*
 -----------------------默认图片-----------------------
 */

#define DEFAULTIMAGE [UIImage imageNamed:@"default_noimg"]
#define INLETTYPE @"C"
#define DYSCNNINGCODE @"M10001"

#define NETWORKDEFULTERROR @"网络请求失败,请稍后再试"

#define SUCCESS @"DaYi_success"
#define FAIL @"DaYi_fail"
#define AUTHORIZATION @"DaYi_authorization"


typedef enum : int {
    ROLEIDTYPE_WORKER = 1,   //工人
    ROLEIDTYPE_TEAMLEADER,   //班组长
    ROLEIDTYPE_SERVICESCOMPANY,   //劳务公司
    ROLEIDTYPE_CONSTRUCTIONUNIT_TOTALPACKAGE,   //施工单位-总包
    ROLEIDTYPE_CONSTRUCTIONUNIT_DEVELOPER,   //建设单位-开发商
    ROLEIDTYPE_ADMINISTRATIVEUNIT,   //行政单位
} ROLEIDTYPE;

