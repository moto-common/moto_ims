.class public Lcom/mediatek/ims/config/internal/ImsConfigImplCache;
.super Ljava/lang/Object;
.source "ImsConfigImplCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImsConfigImplCache"

.field private static sCacheInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigImplCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompatConfigImpl:Lcom/mediatek/ims/config/internal/ImsConfigImpl;

.field private mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

.field private mContext:Landroid/content/Context;

.field private mImsConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsFeatureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)V
    .locals 1
    .param p1, "configImpl"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 58
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mContext:Landroid/content/Context;

    .line 59
    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mPhoneId:I

    .line 60
    invoke-static {p2}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigImpl(I)Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mCompatConfigImpl:Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method public static getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # I

    .line 261
    packed-switch p0, :pswitch_data_0

    .line 405
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :pswitch_1
    const-string v0, "IMS_MCFG_SUPPORTED_SERVICES"

    return-object v0

    .line 399
    :pswitch_2
    const-string v0, "VOICE_OVER_WIFI_MDN"

    return-object v0

    .line 397
    :pswitch_3
    const-string v0, "E911_FAILOVER_TIMER"

    return-object v0

    .line 395
    :pswitch_4
    const-string v0, "TVOLTE_HYS_TIMER"

    return-object v0

    .line 393
    :pswitch_5
    const-string v0, "VICE_SETTING_ENABLED"

    return-object v0

    .line 391
    :pswitch_6
    const-string v0, "T_EPDG_1X"

    return-object v0

    .line 389
    :pswitch_7
    const-string v0, "T_EPDG_WIFI"

    return-object v0

    .line 387
    :pswitch_8
    const-string v0, "T_EPDG_LTE"

    return-object v0

    .line 385
    :pswitch_9
    const-string v0, "VOWT_B"

    return-object v0

    .line 383
    :pswitch_a
    const-string v0, "VOWT_A"

    return-object v0

    .line 381
    :pswitch_b
    const-string v0, "TH_1x"

    return-object v0

    .line 379
    :pswitch_c
    const-string v0, "TH_LTE3"

    return-object v0

    .line 377
    :pswitch_d
    const-string v0, "TH_LTE2"

    return-object v0

    .line 375
    :pswitch_e
    const-string v0, "TH_LTE1"

    return-object v0

    .line 373
    :pswitch_f
    const-string v0, "VIDEO_QUALITY"

    return-object v0

    .line 371
    :pswitch_10
    const-string v0, "SMS_PSI"

    return-object v0

    .line 369
    :pswitch_11
    const-string v0, "AMR_DEFAULT_MODE"

    return-object v0

    .line 367
    :pswitch_12
    const-string v0, "DTMF_NB_PT"

    return-object v0

    .line 365
    :pswitch_13
    const-string v0, "DTMF_WB_PT"

    return-object v0

    .line 363
    :pswitch_14
    const-string v0, "AMR_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 361
    :pswitch_15
    const-string v0, "AMR_OCTET_ALIGNED_PT"

    return-object v0

    .line 359
    :pswitch_16
    const-string v0, "AMR_WB_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 357
    :pswitch_17
    const-string v0, "AMR_WB_OCTET_ALIGNED_PT"

    return-object v0

    .line 355
    :pswitch_18
    const-string v0, "SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 353
    :pswitch_19
    const-string v0, "SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 351
    :pswitch_1a
    const-string v0, "SIP_ACK_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 349
    :pswitch_1b
    const-string v0, "SIP_ACK_RECEIPT_WAIT_TIME_MSEC"

    return-object v0

    .line 347
    :pswitch_1c
    const-string v0, "SIP_INVITE_RSP_RETX_INTERVAL_MSEC"

    return-object v0

    .line 345
    :pswitch_1d
    const-string v0, "SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC"

    return-object v0

    .line 343
    :pswitch_1e
    const-string v0, "SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 341
    :pswitch_1f
    const-string v0, "SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 339
    :pswitch_20
    const-string v0, "SIP_INVITE_RSP_WAIT_TIME_MSEC"

    return-object v0

    .line 337
    :pswitch_21
    const-string v0, "SIP_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 335
    :pswitch_22
    const-string v0, "SPEECH_END_PORT"

    return-object v0

    .line 333
    :pswitch_23
    const-string v0, "SPEECH_START_PORT"

    return-object v0

    .line 331
    :pswitch_24
    const-string v0, "REGISTRATION_RETRY_MAX_TIME_SEC"

    return-object v0

    .line 329
    :pswitch_25
    const-string v0, "REGISTRATION_RETRY_BASE_TIME_SEC"

    return-object v0

    .line 327
    :pswitch_26
    const-string v0, "KEEP_ALIVE_ENABLED"

    return-object v0

    .line 325
    :pswitch_27
    const-string v0, "LBO_PCSCF_ADDRESS"

    return-object v0

    .line 323
    :pswitch_28
    const-string v0, "VOLTE_USER_OPT_IN_STATUS"

    return-object v0

    .line 321
    :pswitch_29
    const-string v0, "MOBILE_DATA_ENABLED"

    return-object v0

    .line 319
    :pswitch_2a
    const-string v0, "VOICE_OVER_WIFI_SETTING_ENABLED"

    return-object v0

    .line 317
    :pswitch_2b
    const-string v0, "VOICE_OVER_WIFI_MODE"

    return-object v0

    .line 315
    :pswitch_2c
    const-string v0, "VOICE_OVER_WIFI_ROAMING"

    return-object v0

    .line 313
    :pswitch_2d
    const-string v0, "EAB_SETTING_ENABLED"

    return-object v0

    .line 311
    :pswitch_2e
    const-string v0, "GZIP_FLAG"

    return-object v0

    .line 309
    :pswitch_2f
    const-string v0, "CAPAB_POLL_LIST_SUB_EXP"

    return-object v0

    .line 307
    :pswitch_30
    const-string v0, "MAX_NUMENTRIES_IN_RCL"

    return-object v0

    .line 305
    :pswitch_31
    const-string v0, "SOURCE_THROTTLE_PUBLISH"

    return-object v0

    .line 303
    :pswitch_32
    const-string v0, "CAPABILITIES_POLL_INTERVAL"

    return-object v0

    .line 301
    :pswitch_33
    const-string v0, "AVAILABILITY_CACHE_EXPIRATION"

    return-object v0

    .line 299
    :pswitch_34
    const-string v0, "CAPABILITIES_CACHE_EXPIRATION"

    return-object v0

    .line 297
    :pswitch_35
    const-string v0, "CAPABILITY_DISCOVERY_ENABLED"

    return-object v0

    .line 295
    :pswitch_36
    const-string v0, "PUBLISH_TIMER_EXTENDED"

    return-object v0

    .line 293
    :pswitch_37
    const-string v0, "PUBLISH_TIMER"

    return-object v0

    .line 291
    :pswitch_38
    const-string v0, "SMS_OVER_IP"

    return-object v0

    .line 289
    :pswitch_39
    const-string v0, "SMS_FORMAT"

    return-object v0

    .line 287
    :pswitch_3a
    const-string v0, "DOMAIN_NAME"

    return-object v0

    .line 285
    :pswitch_3b
    const-string v0, "LVC_SETTING_ENABLED"

    return-object v0

    .line 283
    :pswitch_3c
    const-string v0, "VLT_SETTING_ENABLED"

    return-object v0

    .line 281
    :pswitch_3d
    const-string v0, "SIP_TF_TIMER"

    return-object v0

    .line 279
    :pswitch_3e
    const-string v0, "SIP_T2_TIMER"

    return-object v0

    .line 277
    :pswitch_3f
    const-string v0, "SIP_T1_TIMER"

    return-object v0

    .line 275
    :pswitch_40
    const-string v0, "SILENT_REDIAL_ENABLE"

    return-object v0

    .line 273
    :pswitch_41
    const-string v0, "TDELAY"

    return-object v0

    .line 271
    :pswitch_42
    const-string v0, "CANCELLATION_TIMER"

    return-object v0

    .line 269
    :pswitch_43
    const-string v0, "MIN_SE"

    return-object v0

    .line 267
    :pswitch_44
    const-string v0, "SIP_SESSION_TIMER"

    return-object v0

    .line 265
    :pswitch_45
    const-string v0, "VOCODER_AMRWBMODESET"

    return-object v0

    .line 263
    :pswitch_46
    const-string v0, "VOCODER_AMRMODESET"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFeatureString(I)Ljava/lang/String;
    .locals 1
    .param p0, "feature"    # I

    .line 239
    packed-switch p0, :pswitch_data_0

    .line 257
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_0
    const-string v0, "UT_OVER_WIFI"

    return-object v0

    .line 251
    :pswitch_1
    const-string v0, "UT_OVER_LTE"

    return-object v0

    .line 249
    :pswitch_2
    const-string v0, "VIDEO_OVER_WIFI"

    return-object v0

    .line 247
    :pswitch_3
    const-string v0, "VOICE_OVER_WIFI"

    return-object v0

    .line 245
    :pswitch_4
    const-string v0, "VIDEO_OVER_LTE"

    return-object v0

    .line 243
    :pswitch_5
    const-string v0, "VOICE_OVER_LTE"

    return-object v0

    .line 241
    :pswitch_6
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsFeature(I)Z
    .locals 3
    .param p1, "feature"    # I

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "value":Z
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 114
    .local v1, "bObject":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    :cond_0
    return v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;
    .locals 3
    .param p0, "phoneId"    # I

    .line 34
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 39
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)Lcom/mediatek/ims/config/internal/ImsConfigImplCache;
    .locals 4
    .param p0, "configImpl"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 44
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;Landroid/content/Context;I)V

    .line 50
    .local v1, "cache":Lcom/mediatek/ims/config/internal/ImsConfigImplCache;
    sget-object v2, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v0

    return-object v1

    .line 52
    .end local v1    # "cache":Lcom/mediatek/ims/config/internal/ImsConfigImplCache;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImplCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImplCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImplCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method private setImsFeature(IZ)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "value"    # Z

    .line 85
    const/4 v0, -0x1

    .line 86
    .local v0, "prev_value":I
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->isImsFeatureExist(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v1

    move v0, v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v1, -0x1

    const-string v2, ", name="

    const-string v3, ", value="

    if-ne v0, v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsFeature: new feature="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 97
    .local v1, "bvalue":Z
    :goto_0
    if-eq v1, p2, :cond_3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsFeature: update feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 108
    .end local v1    # "bvalue":Z
    :goto_1
    return-void

    .line 101
    .restart local v1    # "bvalue":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    return-void
.end method

.method public getImsConfig(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .line 145
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 150
    :cond_0
    return-object v0
.end method

.method public getImsConfigInt(I)I
    .locals 3
    .param p1, "item"    # I

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    .line 129
    .local v1, "val_int":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 132
    .end local v1    # "val_int":I
    :cond_0
    const/4 v1, -0x1

    .line 134
    .local v1, "ret":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 136
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 137
    :goto_0
    return v1
.end method

.method public getImsFeatureInt(I)I
    .locals 1
    .param p1, "feature"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v0

    .line 81
    .local v0, "value":Z
    return v0
.end method

.method public isImsConfigExist(I)Z
    .locals 2
    .param p1, "item"    # I

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImsFeatureExist(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyProvisionedValueChanged(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 191
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mCompatConfigImpl:Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 193
    return-void
.end method

.method public notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mConfigImpl:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mCompatConfigImpl:Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    .line 198
    return-void
.end method

.method public setImsConfig(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 142
    return-void
.end method

.method public setImsConfig(ILjava/lang/String;)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 155
    if-nez p2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsConfig: value is null string for item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->loge(Ljava/lang/String;)V

    .line 157
    const-string p2, ""

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, "prev_value":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object v1, p2

    .line 170
    .local v1, "logValue":Ljava/lang/String;
    const/16 v2, 0x48

    if-ne p1, v2, :cond_2

    .line 171
    const-string v2, "ImsConfigImplCache"

    invoke-static {v2, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_2
    const-string v2, ", name="

    const-string v3, ", value="

    if-nez v0, :cond_3

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsConfig: new item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsConfig: update item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_4
    return-void
.end method

.method public setImsFeatureInt(II)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 76
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->setImsFeature(IZ)V

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ImsConfigImplCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "\tImsFeatureCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 219
    .local v1, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    const-string v5, ", name="

    const-string v6, ", value="

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 220
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v7, "\t\tFeature="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 226
    :cond_0
    const-string v2, "\tImsConfigCache\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 228
    .local v2, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 229
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v8, "\t\tItem="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
