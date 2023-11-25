.class public Lcom/mediatek/ims/ImsConfigManager;
.super Ljava/lang/Object;
.source "ImsConfigManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigManager"

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsConfigAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMtkImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/IMtkImsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 82
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    .line 83
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    .line 84
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    .line 104
    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 106
    new-instance v0, Lcom/mediatek/ims/ImsConfigManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConfigManager$1;-><init>(Lcom/mediatek/ims/ImsConfigManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfigManager"

    const-string v2, "ImsConfigManager Enter"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 161
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 166
    :cond_1
    const-string v1, "persist.vendor.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OP236"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 166
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    nop

    .line 172
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConfigManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->updateImsResrouceCapability(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConfigManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->setVdpProvision(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsConfigManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 314
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    goto :goto_0

    .line 318
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :cond_0
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ImsConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ImsConfigAdapter phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget-object v2, p2, p3

    invoke-direct {v1, p1, v2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 320
    .restart local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_0
    monitor-exit v0

    .line 323
    return-object v1

    .line 322
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 501
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 502
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 503
    :cond_0
    const/4 v0, -0x1

    .line 505
    :cond_1
    return v0
.end method

.method private static isTestSim(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "isTestSim":Z
    const-string v1, "0"

    const-string v2, "1"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 488
    :pswitch_0
    const-string v3, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v3, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    goto :goto_0

    .line 482
    :pswitch_2
    const-string v3, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 483
    goto :goto_0

    .line 479
    :pswitch_3
    const-string v3, "vendor.gsm.sim.ril.testsim"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 480
    nop

    .line 491
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapFeatureValue(Z)I
    .locals 1
    .param p0, "value"    # Z

    .line 471
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0
.end method

.method private setVdpProvision(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-gez p1, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v0

    .line 531
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 532
    .local v3, "keys":[Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    .line 533
    .local v2, "values":[Ljava/lang/String;
    const-string v4, "provision_setting_vdp"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 536
    :try_start_0
    invoke-interface {v0, v3, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_0

    .line 537
    :catch_0
    move-exception v4

    .line 538
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setModemImsCfg fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateImsResrouceCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 328
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 329
    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 330
    .local v5, "mnc":I
    const/4 v0, 0x0

    .line 331
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v6, 0x0

    .line 333
    .local v6, "mccMnc":Ljava/lang/String;
    const-string v7, "ss"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "simState":Ljava/lang/String;
    const-string v9, "phone"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 336
    .local v10, "phoneId":I
    const-string v11, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "LOADED"

    const-string v13, "ABSENT"

    const-string v14, "ImsConfigManager"

    if-nez v11, :cond_2

    .line 337
    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 338
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {v1, v2, v10}, Lcom/mediatek/ims/ImsConfigManager;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 343
    :cond_1
    return-void

    .line 346
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get MtkImsConfigImpl of phone "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v11

    .line 354
    .end local v0    # "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .local v11, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_start_0
    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setImsResCapability to volte only w/o SIM on phone "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x1

    .line 358
    .local v0, "volteResVal":I
    const/4 v12, 0x0

    .line 359
    .local v12, "vilteResVal":I
    const/4 v15, 0x0

    .line 361
    .local v15, "wfcResVal":I
    invoke-interface {v11, v13, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 363
    const/4 v13, 0x1

    invoke-interface {v11, v13, v12}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 365
    const/4 v13, 0x2

    invoke-interface {v11, v13, v15}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    goto/16 :goto_7

    .line 371
    .end local v0    # "volteResVal":I
    .end local v12    # "vilteResVal":I
    .end local v15    # "wfcResVal":I
    :cond_3
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    invoke-static {v10}, Lcom/mediatek/ims/ImsConfigManager;->isTestSim(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 373
    nop

    .line 374
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v12, v0

    .line 376
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 377
    const-string v15, "Invalid mccMnc:"

    if-eqz v6, :cond_d

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    goto/16 :goto_5

    .line 383
    :cond_4
    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v4, v16

    .line 384
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v0

    .line 388
    nop

    .line 390
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM loaded on phone "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " with mcc: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mnc: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {v10}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 394
    .local v0, "subId":I
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 395
    .local v15, "iccid":Ljava/lang/String;
    sget-boolean v16, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    if-eqz v16, :cond_6

    sget-boolean v16, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    if-eqz v16, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v17, v0

    goto :goto_1

    .line 396
    :cond_6
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "subId":I
    .local v17, "subId":I
    const-string v0, "check iccid:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 400
    const-string v0, "8988605"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 401
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "Replace mccmnc for APTG roaming case"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_7
    const/16 v0, 0x1d2

    .line 403
    .end local v4    # "mcc":I
    .local v0, "mcc":I
    const/4 v4, 0x5

    move v5, v4

    move v4, v0

    .end local v5    # "mnc":I
    .local v4, "mnc":I
    goto :goto_2

    .line 406
    .end local v0    # "mcc":I
    .local v4, "mcc":I
    .restart local v5    # "mnc":I
    :cond_8
    const-string v0, "898603"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "898611"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 407
    :cond_9
    const/16 v4, 0x1cc

    .line 408
    const/4 v5, 0x3

    .line 409
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "Replace mccmnc for CT roaming case"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 417
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 418
    .local v13, "newConfiguration":Landroid/content/res/Configuration;
    iput v4, v13, Landroid/content/res/Configuration;->mcc:I

    .line 419
    if-nez v5, :cond_b

    const v18, 0xffff

    move/from16 v1, v18

    goto :goto_3

    :cond_b
    move v1, v5

    :goto_3
    iput v1, v13, Landroid/content/res/Configuration;->mnc:I

    .line 420
    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 422
    invoke-static {v10}, Lcom/mediatek/ims/OperatorUtils;->isCTVolteDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "volteResVal":I
    const/16 v18, 0x0

    .line 425
    .local v18, "vilteResVal":I
    const/16 v19, 0x0

    .local v19, "wfcResVal":I
    goto :goto_4

    .line 427
    .end local v1    # "volteResVal":I
    .end local v18    # "vilteResVal":I
    .end local v19    # "wfcResVal":I
    :cond_c
    const v1, 0x11100c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    .line 429
    .restart local v1    # "volteResVal":I
    move/from16 v18, v1

    .end local v1    # "volteResVal":I
    .local v18, "volteResVal":I
    const v1, 0x11100c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    .line 431
    .local v1, "vilteResVal":I
    move/from16 v19, v1

    .end local v1    # "vilteResVal":I
    .local v19, "vilteResVal":I
    const v1, 0x11100c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    move/from16 v20, v19

    move/from16 v19, v1

    move/from16 v1, v18

    move/from16 v18, v20

    .line 434
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .end local v13    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v15    # "iccid":Ljava/lang/String;
    .end local v17    # "subId":I
    .local v1, "volteResVal":I
    .local v18, "vilteResVal":I
    .local v19, "wfcResVal":I
    :goto_4
    move/from16 v0, v18

    move/from16 v12, v19

    goto :goto_6

    .line 385
    .end local v1    # "volteResVal":I
    .end local v18    # "vilteResVal":I
    .end local v19    # "wfcResVal":I
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 378
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 436
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found test SIM on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x1

    .line 438
    .restart local v1    # "volteResVal":I
    const/16 v18, 0x1

    .line 439
    .restart local v18    # "vilteResVal":I
    const/4 v0, 0x1

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v12, v19

    .line 442
    .end local v18    # "vilteResVal":I
    .local v0, "vilteResVal":I
    .local v12, "wfcResVal":I
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set res capability: volte = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", vilte = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", wfc = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v13, 0x0

    invoke-interface {v11, v13, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 447
    const/4 v13, 0x1

    invoke-interface {v11, v13, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 449
    const/4 v13, 0x2

    invoke-interface {v11, v13, v12}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 458
    .end local v0    # "vilteResVal":I
    .end local v1    # "volteResVal":I
    .end local v12    # "wfcResVal":I
    :cond_f
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", simState:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 467
    nop

    .end local v0    # "mIntent":Landroid/content/Intent;
    goto :goto_8

    .line 465
    :catch_1
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetImsCapability fail: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 509
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 510
    invoke-static {p1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 511
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 514
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_0

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_0

    .line 522
    :cond_2
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ImsConfigManager"

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/ims/internal/IImsConfig;
    .locals 7
    .param p1, "phoneId"    # I

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 206
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 208
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 212
    :cond_0
    new-instance v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v4, v5, v6, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v4

    .line 213
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 214
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_0
    monitor-exit v3

    .line 217
    return-object v1

    .line 216
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 12
    .param p1, "phoneId"    # I

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 278
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    const/4 v2, 0x0

    .line 280
    .local v2, "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v3, v4, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v3

    .line 282
    .local v3, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 283
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v5}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 286
    :cond_0
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-direct {v5, v6, v7, v3, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v5

    .line 288
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    .line 289
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    iget-object v11, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v11

    .line 294
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-object v2, v4

    goto :goto_1

    .line 297
    :cond_1
    new-instance v4, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v5, p1

    move-object v5, v4

    move-object v8, v1

    move-object v9, v3

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v2, v4

    .line 299
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_1
    monitor-exit v11

    .line 302
    return-object v2

    .line 301
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 291
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method public getImsConfigImpl(I)Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    .locals 6
    .param p1, "phoneId"    # I

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    move-object v0, v2

    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 230
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    invoke-direct {v3, v4, v5, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v3

    .line 231
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v2    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :goto_0
    monitor-exit v1

    .line 234
    return-object v0

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    if-eqz p2, :cond_0

    .line 183
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v1, v2, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v1

    .line 187
    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 189
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v3

    .line 191
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit v2

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initEx(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 249
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 251
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v3, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v4, "ImsConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEx ImsConfigImpl phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 253
    :try_start_0
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-direct {v5, v6, v7, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v5

    .line 255
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v7, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 259
    if-eqz v3, :cond_1

    .line 260
    const-string v1, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initEx MtkImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v1

    .line 262
    :try_start_2
    new-instance v3, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v4, p1

    move-object v4, v3

    move-object v8, v2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    .line 264
    .local v3, "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    .end local v3    # "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 257
    .end local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_1
    move-exception v3

    move-object v7, v1

    move-object v1, v3

    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0
.end method
