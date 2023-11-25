.class public Lcom/mediatek/ims/config/MtkImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    }
.end annotation


# static fields
.field private static final BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[SR-IMS][MtkImsConfigImpl]"

.field public static final UNKNOWN:I = -0x1

.field public static reason:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

.field private mPhoneId:I

.field private mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

.field private mRequestHandler:Landroid/os/Handler;

.field private mUserSetting:Ljava/lang/Integer;

.field private mVolteProvisionFlag:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->reason:I

    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;ILandroid/content/Context;)V
    .locals 3
    .param p1, "config"    # Lcom/android/ims/internal/IImsConfig;
    .param p2, "phoneId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 80
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    .line 81
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkImsConfigImpl register ACS fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsConfigImplRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "reqeustHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 99
    iput-object p3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 100
    iput p2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateConfiguration(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 53
    iget v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 53
    iget v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/config/MtkImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    return p1
.end method

.method private broadcastConfigChange(II)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 498
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v0

    .line 501
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(II)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    .line 508
    .local v0, "prev_value":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastConfigChange item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prev_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "bProvisioning":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 519
    :sswitch_0
    const/4 v1, 0x1

    .line 522
    :goto_0
    if-eqz v1, :cond_3

    .line 523
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 524
    .local v4, "bPrev":Z
    :goto_1
    if-ne p2, v3, :cond_2

    move v2, v3

    .line 525
    .local v2, "bNew":Z
    :cond_2
    if-eq v4, v2, :cond_3

    .line 526
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v3, "provisionIntent":Landroid/content/Intent;
    const/high16 v5, 0x1000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    const-string v5, "item"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prev_value"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v3, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 532
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 536
    .end local v2    # "bNew":Z
    .end local v3    # "provisionIntent":Landroid/content/Intent;
    .end local v4    # "bPrev":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(II)V

    .line 538
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x19 -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized getUserSetting()Z
    .locals 7

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 455
    .local v0, "subid":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 456
    const-string v1, "[SR-IMS][MtkImsConfigImpl]"

    const-string v3, "checkinVolteProvision: Invalid subscription ID"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return v2

    .line 460
    .end local p0    # "this":Lcom/mediatek/ims/config/MtkImsConfigImpl;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 461
    .local v1, "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v1, :cond_1

    .line 462
    const-string v3, "[SR-IMS][MtkImsConfigImpl]"

    const-string v4, "checkinVolteProvision: mImsMmTelManager null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    monitor-exit p0

    return v2

    .line 473
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 474
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 477
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 480
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 481
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    :cond_4
    nop

    .line 490
    monitor-exit p0

    return v4

    .line 485
    :catch_0
    move-exception v3

    .line 486
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "[SR-IMS][MtkImsConfigImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserSetting error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    monitor-exit p0

    return v2

    .line 453
    .end local v0    # "subid":I
    .end local v1    # "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 541
    const-string v0, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "retVal"    # I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "info":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 323
    :sswitch_0
    const-string v0, "vice_dm"

    .line 324
    goto :goto_0

    .line 320
    :sswitch_1
    const-string v0, "wfc_dm"

    .line 321
    goto :goto_0

    .line 317
    :sswitch_2
    const-string v0, "eab_dm"

    .line 318
    goto :goto_0

    .line 314
    :sswitch_3
    const-string v0, "vt_dm"

    .line 315
    goto :goto_0

    .line 311
    :sswitch_4
    const-string v0, "vlt_dm"

    .line 312
    nop

    .line 328
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimApplicationState(I)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 330
    .local v1, "simLoaded":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    if-eqz p3, :cond_2

    .line 339
    const-string v4, ", ret: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    :cond_2
    nop

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    .line 344
    return-void

    .line 331
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0x19 -> :sswitch_2
        0x1c -> :sswitch_1
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 545
    const-string v0, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private updateConfiguration(ZI)V
    .locals 10
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 272
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 273
    .local v0, "subIds":[I
    const-string v1, "[SR-IMS][MtkImsConfigImpl]"

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 275
    :try_start_0
    aget v3, v0, v2

    invoke-static {v3}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 276
    .local v3, "pm":Landroid/telephony/ims/ProvisioningManager;
    if-eqz v3, :cond_6

    .line 277
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 278
    iget-object v4, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v5, "capInfoExpiry"

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0x5460

    .line 279
    .local v4, "rcsExpiry":I
    :goto_0
    const/16 v5, 0x12

    .line 280
    .local v5, "key":I
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 281
    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 284
    :cond_1
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 285
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v7, "source-throttlepublish"

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v6, 0x7530

    .line 286
    .local v6, "publishThrottle":I
    :goto_1
    const/16 v5, 0x15

    .line 287
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 288
    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 291
    :cond_3
    iget-object v7, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v7}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v7

    .line 292
    .local v7, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v8

    .line 293
    .local v9, "info":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 294
    .local v8, "infoByte":[B
    :cond_5
    if-eqz v8, :cond_6

    .line 295
    invoke-virtual {v3, v8, v2}, Landroid/telephony/ims/ProvisioningManager;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 298
    .end local v3    # "pm":Landroid/telephony/ims/ProvisioningManager;
    .end local v4    # "rcsExpiry":I
    .end local v5    # "key":I
    .end local v6    # "publishThrottle":I
    .end local v7    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .end local v8    # "infoByte":[B
    .end local v9    # "info":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConfiguration, excpetion happened! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    goto :goto_4

    .line 302
    :cond_7
    const-string v2, "updateConfiguration, invalid subId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_4
    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/mediatek/ims/config/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getUserSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    return-void

    .line 366
    :cond_1
    move v0, p1

    .line 367
    .local v0, "event_code":I
    move-object v1, p2

    .line 369
    .local v1, "event_info":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;ILjava/lang/String;)V

    .line 447
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method public getConfigInt(I)I
    .locals 4
    .param p1, "item"    # I

    .line 151
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v1

    .line 152
    .local v1, "value":I
    if-eq v1, v0, :cond_0

    .line 154
    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->broadcastConfigChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return v1

    .line 159
    .end local v1    # "value":I
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInt: item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    return-object v0

    .line 172
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInt: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0

    .line 109
    .local v0, "retVal":I
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 111
    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->broadcastConfigChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 118
    .end local v0    # "retVal":I
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "retVal":I
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    move-result-object v1

    .line 131
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v1, 0x0

    return v1

    .line 144
    .end local v0    # "retVal":I
    :cond_0
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0x48

    const-string v2, "failed: "

    const-string v3, " value="

    const-string v4, "setConfig: item="

    if-ne p1, v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 8
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRcsClientConfig called in ACS vendor with rcc value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "mRcsVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "mRcsProfile":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "mClientVendor":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "mClientVersion":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v5, :cond_1

    .line 190
    :try_start_0
    invoke-virtual {v5, v0, v2, v3, v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v5

    .line 193
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAcsonfiguration, excpetion happened! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v1, "[SR-IMS][MtkImsConfigImpl]"

    if-eqz v0, :cond_1

    .line 204
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->triggerAcsRequest(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerAutoConfiguration error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 209
    :cond_1
    const-string v0, "ua service is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_1
    return-void
.end method
