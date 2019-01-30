
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
#define DYMaxSearchTextLength 20

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
#define myDotNumbers @"0123456789.\n"
#define myNumbers @"0123456789\n"
#define DYIPAChannel @"APPSTORE"
#define JPUSHAPPKEY @"2bbfca18924af1ed8c010571"//极光推送的key
#define JPUSHAPPUSERID @"notfionJpushid"//通知发送绑定别名
#define JPUSHDELETEUSERID @"deletenotfiinjpushid"//清楚绑定的别名

#define BAIDUMAPKEY @"uREAf649bOzkRl24uzuk94GLzSrlbe2c"//百度地图

#define DEFAULTIMAGE [UIImage imageNamed:@"default_noimg"]
#define INLETTYPE @"C"
#define DYSCNNINGCODE @"M10001"

#define NETWORKDEFULTERROR @"网络请求失败,请稍后再试"

#define SUCCESS @"DaYi_success"
#define FAIL @"DaYi_fail"
#define AUTHORIZATION @"DaYi_authorization"
#define DYREFRESHWORKBENCH @"DYREFRESHWORKBENCH"

typedef enum : int {
    ROLEIDTYPE_WORKER = 1,   //工人
    ROLEIDTYPE_TEAMLEADER,   //班组长
    ROLEIDTYPE_SERVICESCOMPANY,   //劳务公司
    ROLEIDTYPE_CONSTRUCTIONUNIT_TOTALPACKAGE,   //施工单位-总包
    ROLEIDTYPE_CONSTRUCTIONUNIT_DEVELOPER,   //建设单位-开发商
    ROLEIDTYPE_ADMINISTRATIVEUNIT,   //行政单位
} ROLEIDTYPE;


typedef enum : int {
    DYTASKDETAILTYPE_MYPLAN = 1,//待审批的
    DYTASKDETAILTYPE_DOING,//我负责的
    DYTASKDETAILTYPE_MYCREAT,//我创建的
    DYTASKDETAILTYPE_HISTORY,//巡检记录 历史计划
    DYTASKDETAILTYPE_RECT,//我整改的
    DYTASKDETAILTYPE_LOOKLOOK,//只能看不能操作
    DYTASKDETAILTYPE_ALREADY,//已处理
} DYTASKDETAILTYPE;

typedef enum : int {
    DYPLATFORMDETAILTYPE_QUALITY = 1,//质量
    DYPLATFORMDETAILTYPE_SECTITY,//安全
    DYPLATFORMDETAILTYPE_BUSINESS,//商务认证
    DYPLATFORMDETAILTYPE_TASK,//任务
    DYPLATFORMDETAILTYPE_CONTRACT,//合同
    DYPLATFORMDETAILTYPE_BADRECORD,//实名管理
    DYPLATFORMDETAILTYPE_VIDEO,//视频监控
    DYPLATFORMDETAILTYPE_EDUCATION,//三级教育
    DYPLATFORMDETAILTYPE_DISPUTES,//纠纷
    DYPLATFORMDETAILTYPE_SIGN,//考勤
    DYPLATFORMDETAILTYPE_ADDRESSBOOK,//通讯录
    DYPLATFORMDETAILTYPE_ZHAOGONG,//招工
} DYPLATFORMDETAILTYPE;

// 箭头的位置
typedef enum : int {
    AddressBookFoldingSectionHeaderArrowPositionLeft,
    AddressBookFoldingSectionHeaderArrowPositionRight,
} AddressBookFoldingSectionHeaderArrowPosition;

typedef enum : int {
    ViewControllerNavigationBarType_Normal,
    ViewControllerNavigationBarType_Search,
} ViewControllerNavigationBarType;
