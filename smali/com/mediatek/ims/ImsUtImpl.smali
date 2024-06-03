.class public Lcom/mediatek/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CB_MT:I = 0x3f6

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x4b0

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CB_MT:I = 0x3f7

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x4b1

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final SDBG:Z

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field private static final TAG:Ljava/lang/String; = "ImsUtImpl"

.field static final TIME_VALUE_HOUR_MAX:I = 0x17

.field static final TIME_VALUE_MIN:I = 0x0

.field static final TIME_VALUE_MINUTE_MAX:I = 0x3b

.field private static final mLock:Ljava/lang/Object;

.field private static sImsUtImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsUtImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

.field private mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mListener:Landroid/telephony/ims/ImsUtListener;

.field private mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/ImsUtImpl;->SDBG:Z

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 117
    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 175
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 122
    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 176
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsUtImplResult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 181
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;-><init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    .line 183
    iput-object p3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 184
    invoke-virtual {p3, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 185
    iput p2, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 187
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsSSOemPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 188
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 102
    iget v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method private convertToTimeSlotArray(Ljava/lang/String;)[J
    .locals 8
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 1156
    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1157
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_0

    .line 1158
    new-array v0, v2, [J

    .line 1159
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1160
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1163
    :try_start_0
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1164
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 1159
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1165
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 1166
    .local v2, "e":Ljava/text/ParseException;
    const-string v5, "ImsUtImpl"

    const-string v6, "convertToTimeSlotArray() ParseException occured"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v5, 0x0

    return-object v5

    .line 1172
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object v0
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .line 1228
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 1229
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 1230
    .local v1, "textByte":[B
    if-nez p0, :cond_0

    const-string v2, "null"

    return-object v2

    .line 1233
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1237
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v2

    .line 1235
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ImsUtImpl"

    const-string v4, "encryptString() exception occured"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v1, 0x0

    .line 1239
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_1

    const-string v2, ""

    return-object v2

    .line 1241
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method public static getAndIncreaseRequestId()I
    .locals 3

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "requestId":I
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    :try_start_0
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v0, v2

    .line 1116
    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1117
    monitor-exit v1

    .line 1118
    return v0

    .line 1117
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getConditionFromCFReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 579
    packed-switch p0, :pswitch_data_0

    .line 598
    const/4 v0, -0x1

    return v0

    .line 593
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 591
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 589
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 587
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 585
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 583
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 581
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .line 510
    packed-switch p1, :pswitch_data_0

    .line 534
    const/4 v0, 0x0

    return-object v0

    .line 532
    :pswitch_0
    const-string v0, "BS_MT"

    return-object v0

    .line 529
    :pswitch_1
    const-string v0, "AC"

    return-object v0

    .line 527
    :pswitch_2
    const-string v0, "AG"

    return-object v0

    .line 525
    :pswitch_3
    const-string v0, "AB"

    return-object v0

    .line 523
    :pswitch_4
    const-string v0, "ACR"

    return-object v0

    .line 520
    :pswitch_5
    const-string v0, "IR"

    return-object v0

    .line 518
    :pswitch_6
    const-string v0, "OX"

    return-object v0

    .line 516
    :pswitch_7
    const-string v0, "OI"

    return-object v0

    .line 514
    :pswitch_8
    const-string v0, "AO"

    return-object v0

    .line 512
    :pswitch_9
    const-string v0, "AI"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 602
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 603
    .local v0, "imsCfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 604
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 605
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 606
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 607
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 608
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 609
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 157
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    .line 160
    .local v1, "m":Lcom/mediatek/ims/ImsUtImpl;
    monitor-exit v0

    return-object v1

    .line 162
    .end local v1    # "m":Lcom/mediatek/ims/ImsUtImpl;
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/ImsUtImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/ImsUtImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    monitor-exit v0

    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceClass()I
    .locals 2

    .line 1122
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static resetServcieClass()V
    .locals 2

    .line 1126
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method


# virtual methods
.method public getCFActionFromAction(I)I
    .locals 1
    .param p1, "cfAction"    # I

    .line 539
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 552
    :pswitch_0
    return v0

    .line 545
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 547
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 543
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 541
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 556
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 575
    return v0

    .line 570
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 568
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 566
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 564
    :pswitch_3
    return v0

    .line 562
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 560
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 558
    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyUtConfigurationQueried(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 1138
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1139
    return-void
.end method

.method public notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1142
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1143
    return-void
.end method

.method public notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1134
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1135
    return-void
.end method

.method public notifyUtConfigurationUpdated(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1130
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 1131
    return-void
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 5
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 713
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 715
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 716
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCFForServiceClass(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 722
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v3

    invoke-interface {v1, v3, p3, p2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 725
    return v2

    .line 716
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCLIP()I
    .locals 5

    .line 777
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 779
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 786
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 788
    return v2

    .line 780
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCLIR()I
    .locals 5

    .line 756
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 758
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 767
    return v2

    .line 759
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLP()I
    .locals 5

    .line 819
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 821
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 822
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 830
    return v2

    .line 822
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLR()I
    .locals 5

    .line 798
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 800
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 807
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 809
    return v2

    .line 801
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .line 621
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 623
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 624
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarring(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    .line 631
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 633
    .local v1, "serviceClass":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v2, v4, v6}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 634
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v0, v6, v1, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 636
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 637
    return v2

    .line 624
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "serviceClass":I
    .end local v2    # "requestId":I
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 650
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 652
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarringForServiceClass(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "facility":Ljava/lang/String;
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, p1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v5, 0x3f6

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 662
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getBarringCalls(ILandroid/os/Message;)V

    .line 663
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 665
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v0, v4, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 668
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 669
    return v2

    .line 653
    .end local v0    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 680
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public queryCallWaiting()I
    .locals 6

    .line 735
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 737
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 738
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 746
    return v2

    .line 738
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 1109
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 1110
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 841
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 843
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 844
    monitor-exit v0

    .line 846
    return v2

    .line 844
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1046
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 1048
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1049
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3f3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1055
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIP(ILandroid/os/Message;)V

    .line 1057
    return v2

    .line 1049
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .line 1024
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 1026
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1027
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3f2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1033
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1035
    return v2

    .line 1027
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1090
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 1092
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1093
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3f5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1099
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLP(ILandroid/os/Message;)V

    .line 1101
    return v2

    .line 1093
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .line 1068
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 1070
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1071
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1077
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLR(ILandroid/os/Message;)V

    .line 1079
    return v2

    .line 1071
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 860
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 862
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 863
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarring(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 870
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 873
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v0

    .line 875
    .local v8, "serviceClass":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v1

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 878
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 880
    return v2

    .line 863
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v6    # "bEnable":Z
    .end local v8    # "serviceClass":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 896
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 898
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 899
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 905
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 908
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v1

    move v8, p4

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 910
    return v2

    .line 899
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v6    # "bEnable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 926
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 928
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 929
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringWithPassword(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 935
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "facility":Ljava/lang/String;
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v4, p1, :cond_3

    .line 939
    if-eqz p3, :cond_1

    .line 940
    array-length v3, p3

    new-array v3, v3, [Lcom/mediatek/ims/MtkImsBarringCall;

    .local v3, "barCalls":[Lcom/mediatek/ims/MtkImsBarringCall;
    goto :goto_1

    .line 942
    .end local v3    # "barCalls":[Lcom/mediatek/ims/MtkImsBarringCall;
    :cond_1
    new-array v3, v3, [Lcom/mediatek/ims/MtkImsBarringCall;

    .line 943
    .restart local v3    # "barCalls":[Lcom/mediatek/ims/MtkImsBarringCall;
    new-instance v4, Lcom/mediatek/ims/MtkImsBarringCall;

    invoke-direct {v4}, Lcom/mediatek/ims/MtkImsBarringCall;-><init>()V

    aput-object v4, v3, v0

    .line 944
    aget-object v4, v3, v0

    iput p2, v4, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    .line 947
    :goto_1
    if-eqz p3, :cond_2

    array-length v4, p3

    if-eqz v4, :cond_2

    .line 948
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, p3

    if-ge v4, v7, :cond_2

    .line 949
    new-instance v7, Lcom/mediatek/ims/MtkImsBarringCall;

    invoke-direct {v7}, Lcom/mediatek/ims/MtkImsBarringCall;-><init>()V

    aput-object v7, v3, v4

    .line 950
    aget-object v7, v3, v4

    iput p2, v7, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    .line 951
    aget-object v7, v3, v4

    aget-object v8, p3, v4

    iput-object v8, v7, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    .line 948
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 955
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v7, 0x3f7

    invoke-virtual {v4, v7, v2, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setBarringCalls([Lcom/mediatek/ims/MtkImsBarringCall;Landroid/os/Message;)V

    .line 958
    .end local v0    # "msg":Landroid/os/Message;
    .end local v3    # "barCalls":[Lcom/mediatek/ims/MtkImsBarringCall;
    goto :goto_3

    .line 959
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 960
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-object v5, v1

    move-object v7, p5

    move v8, p4

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 963
    .end local v0    # "msg":Landroid/os/Message;
    :goto_3
    return v2

    .line 929
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v6    # "bEnable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 13
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 978
    move-object v1, p0

    sget-object v2, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 979
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v3, v0

    .line 980
    .local v3, "requestId":I
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 981
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForward(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, v1, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 987
    .local v0, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v7

    .line 988
    move v4, p2

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v8

    .line 987
    move/from16 v9, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 991
    return v3

    .line 981
    .end local v0    # "msg":Landroid/os/Message;
    .end local v3    # "requestId":I
    :catchall_0
    move-exception v0

    move v4, p2

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 20
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 1190
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 1194
    const-string v0, "ImsUtImpl"

    const-string v1, "updateCallForwardUncondTimer(): Time is all zero! use updateCallForward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    return v0

    .line 1199
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v0

    .line 1201
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForwardUncondTimer(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    if-ltz v8, :cond_1

    const/16 v0, 0x17

    if-gt v8, v0, :cond_1

    if-ltz v9, :cond_1

    const/16 v1, 0x3b

    if-gt v9, v1, :cond_1

    if-ltz v10, :cond_1

    if-gt v10, v0, :cond_1

    if-ltz v11, :cond_1

    if-le v11, v1, :cond_2

    .line 1211
    :cond_1
    const-string v0, "ImsUtImpl"

    const-string v1, "updateCallForwardUncondTimer(): Time is wrong! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_2
    const-string v0, "%02d:%02d,%02d:%02d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1215
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1214
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "timer":Ljava/lang/String;
    iget-object v1, v7, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x4b1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v5, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1218
    .local v1, "msg":Landroid/os/Message;
    iget-object v12, v7, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move/from16 v3, p5

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v13

    .line 1219
    move/from16 v4, p6

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v17, 0x0

    .line 1221
    invoke-direct {v7, v0}, Lcom/mediatek/ims/ImsUtImpl;->convertToTimeSlotArray(Ljava/lang/String;)[J

    move-result-object v18

    .line 1218
    move-object/from16 v16, p7

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1223
    return v2

    .line 1202
    .end local v0    # "timer":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v0

    move/from16 v3, p5

    move/from16 v4, p6

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 1002
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v2, v1

    .line 1004
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1005
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v1, 0x3f1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1011
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1013
    return v2

    .line 1005
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
