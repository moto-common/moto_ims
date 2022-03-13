.class public Lorg/codeaurora/ims/ImsConfigImplCache;
.super Ljava/lang/Object;
.source "ImsConfigImplCache.java"


# static fields
.field private static final DBG:Z = false

.field private static sCacheInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

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

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)V
    .locals 1
    .param p1, "configImpl"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 53
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mContext:Landroid/content/Context;

    .line 54
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public static getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # I

    .line 242
    packed-switch p0, :pswitch_data_0

    .line 386
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :pswitch_1
    const-string v0, "IMS_MCFG_SUPPORTED_SERVICES"

    return-object v0

    .line 380
    :pswitch_2
    const-string v0, "VOICE_OVER_WIFI_MDN"

    return-object v0

    .line 378
    :pswitch_3
    const-string v0, "E911_FAILOVER_TIMER"

    return-object v0

    .line 376
    :pswitch_4
    const-string v0, "TVOLTE_HYS_TIMER"

    return-object v0

    .line 374
    :pswitch_5
    const-string v0, "VICE_SETTING_ENABLED"

    return-object v0

    .line 372
    :pswitch_6
    const-string v0, "T_EPDG_1X"

    return-object v0

    .line 370
    :pswitch_7
    const-string v0, "T_EPDG_WIFI"

    return-object v0

    .line 368
    :pswitch_8
    const-string v0, "T_EPDG_LTE"

    return-object v0

    .line 366
    :pswitch_9
    const-string v0, "VOWT_B"

    return-object v0

    .line 364
    :pswitch_a
    const-string v0, "VOWT_A"

    return-object v0

    .line 362
    :pswitch_b
    const-string v0, "TH_1x"

    return-object v0

    .line 360
    :pswitch_c
    const-string v0, "TH_LTE3"

    return-object v0

    .line 358
    :pswitch_d
    const-string v0, "TH_LTE2"

    return-object v0

    .line 356
    :pswitch_e
    const-string v0, "TH_LTE1"

    return-object v0

    .line 354
    :pswitch_f
    const-string v0, "VIDEO_QUALITY"

    return-object v0

    .line 352
    :pswitch_10
    const-string v0, "SMS_PSI"

    return-object v0

    .line 350
    :pswitch_11
    const-string v0, "AMR_DEFAULT_MODE"

    return-object v0

    .line 348
    :pswitch_12
    const-string v0, "DTMF_NB_PT"

    return-object v0

    .line 346
    :pswitch_13
    const-string v0, "DTMF_WB_PT"

    return-object v0

    .line 344
    :pswitch_14
    const-string v0, "AMR_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 342
    :pswitch_15
    const-string v0, "AMR_OCTET_ALIGNED_PT"

    return-object v0

    .line 340
    :pswitch_16
    const-string v0, "AMR_WB_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 338
    :pswitch_17
    const-string v0, "AMR_WB_OCTET_ALIGNED_PT"

    return-object v0

    .line 336
    :pswitch_18
    const-string v0, "SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 334
    :pswitch_19
    const-string v0, "SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 332
    :pswitch_1a
    const-string v0, "SIP_ACK_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 330
    :pswitch_1b
    const-string v0, "SIP_ACK_RECEIPT_WAIT_TIME_MSEC"

    return-object v0

    .line 328
    :pswitch_1c
    const-string v0, "SIP_INVITE_RSP_RETX_INTERVAL_MSEC"

    return-object v0

    .line 326
    :pswitch_1d
    const-string v0, "SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC"

    return-object v0

    .line 324
    :pswitch_1e
    const-string v0, "SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 322
    :pswitch_1f
    const-string v0, "SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 320
    :pswitch_20
    const-string v0, "SIP_INVITE_RSP_WAIT_TIME_MSEC"

    return-object v0

    .line 318
    :pswitch_21
    const-string v0, "SIP_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 316
    :pswitch_22
    const-string v0, "SPEECH_END_PORT"

    return-object v0

    .line 314
    :pswitch_23
    const-string v0, "SPEECH_START_PORT"

    return-object v0

    .line 312
    :pswitch_24
    const-string v0, "REGISTRATION_RETRY_MAX_TIME_SEC"

    return-object v0

    .line 310
    :pswitch_25
    const-string v0, "REGISTRATION_RETRY_BASE_TIME_SEC"

    return-object v0

    .line 308
    :pswitch_26
    const-string v0, "KEEP_ALIVE_ENABLED"

    return-object v0

    .line 306
    :pswitch_27
    const-string v0, "LBO_PCSCF_ADDRESS"

    return-object v0

    .line 304
    :pswitch_28
    const-string v0, "VOLTE_USER_OPT_IN_STATUS"

    return-object v0

    .line 302
    :pswitch_29
    const-string v0, "MOBILE_DATA_ENABLED"

    return-object v0

    .line 300
    :pswitch_2a
    const-string v0, "VOICE_OVER_WIFI_SETTING_ENABLED"

    return-object v0

    .line 298
    :pswitch_2b
    const-string v0, "VOICE_OVER_WIFI_MODE"

    return-object v0

    .line 296
    :pswitch_2c
    const-string v0, "VOICE_OVER_WIFI_ROAMING"

    return-object v0

    .line 294
    :pswitch_2d
    const-string v0, "EAB_SETTING_ENABLED"

    return-object v0

    .line 292
    :pswitch_2e
    const-string v0, "GZIP_FLAG"

    return-object v0

    .line 290
    :pswitch_2f
    const-string v0, "CAPAB_POLL_LIST_SUB_EXP"

    return-object v0

    .line 288
    :pswitch_30
    const-string v0, "MAX_NUMENTRIES_IN_RCL"

    return-object v0

    .line 286
    :pswitch_31
    const-string v0, "SOURCE_THROTTLE_PUBLISH"

    return-object v0

    .line 284
    :pswitch_32
    const-string v0, "CAPABILITIES_POLL_INTERVAL"

    return-object v0

    .line 282
    :pswitch_33
    const-string v0, "AVAILABILITY_CACHE_EXPIRATION"

    return-object v0

    .line 280
    :pswitch_34
    const-string v0, "CAPABILITIES_CACHE_EXPIRATION"

    return-object v0

    .line 278
    :pswitch_35
    const-string v0, "CAPABILITY_DISCOVERY_ENABLED"

    return-object v0

    .line 276
    :pswitch_36
    const-string v0, "PUBLISH_TIMER_EXTENDED"

    return-object v0

    .line 274
    :pswitch_37
    const-string v0, "PUBLISH_TIMER"

    return-object v0

    .line 272
    :pswitch_38
    const-string v0, "SMS_OVER_IP"

    return-object v0

    .line 270
    :pswitch_39
    const-string v0, "SMS_FORMAT"

    return-object v0

    .line 268
    :pswitch_3a
    const-string v0, "DOMAIN_NAME"

    return-object v0

    .line 266
    :pswitch_3b
    const-string v0, "LVC_SETTING_ENABLED"

    return-object v0

    .line 264
    :pswitch_3c
    const-string v0, "VLT_SETTING_ENABLED"

    return-object v0

    .line 262
    :pswitch_3d
    const-string v0, "SIP_TF_TIMER"

    return-object v0

    .line 260
    :pswitch_3e
    const-string v0, "SIP_T2_TIMER"

    return-object v0

    .line 258
    :pswitch_3f
    const-string v0, "SIP_T1_TIMER"

    return-object v0

    .line 256
    :pswitch_40
    const-string v0, "SILENT_REDIAL_ENABLE"

    return-object v0

    .line 254
    :pswitch_41
    const-string v0, "TDELAY"

    return-object v0

    .line 252
    :pswitch_42
    const-string v0, "CANCELLATION_TIMER"

    return-object v0

    .line 250
    :pswitch_43
    const-string v0, "MIN_SE"

    return-object v0

    .line 248
    :pswitch_44
    const-string v0, "SIP_SESSION_TIMER"

    return-object v0

    .line 246
    :pswitch_45
    const-string v0, "VOCODER_AMRWBMODESET"

    return-object v0

    .line 244
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
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

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_0
    const-string v0, "UT_OVER_WIFI"

    return-object v0

    .line 232
    :pswitch_1
    const-string v0, "UT_OVER_LTE"

    return-object v0

    .line 230
    :pswitch_2
    const-string v0, "VIDEO_OVER_WIFI"

    return-object v0

    .line 228
    :pswitch_3
    const-string v0, "VOICE_OVER_WIFI"

    return-object v0

    .line 226
    :pswitch_4
    const-string v0, "VIDEO_OVER_LTE"

    return-object v0

    .line 224
    :pswitch_5
    const-string v0, "VOICE_OVER_LTE"

    return-object v0

    .line 222
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

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "value":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .local v1, "bObject":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;
    .locals 3
    .param p0, "phoneId"    # I

    .line 29
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 34
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplCache;
    .locals 4
    .param p0, "configImpl"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 39
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 44
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)V

    .line 45
    .local v1, "cache":Lorg/codeaurora/ims/ImsConfigImplCache;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v0

    return-object v1

    .line 47
    .end local v1    # "cache":Lorg/codeaurora/ims/ImsConfigImplCache;
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

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private setImsFeature(IZ)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "value"    # Z

    .line 79
    const/4 v0, -0x1

    .line 80
    .local v0, "prev_value":I
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsFeatureExist(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v1

    move v0, v1

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v1, -0x1

    const-string v2, ", name="

    const-string v3, ", value="

    if-ne v0, v1, :cond_1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsFeature: new feature="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 91
    .local v1, "bvalue":Z
    :goto_0
    if-eq v1, p2, :cond_3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsFeature: update feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 102
    .end local v1    # "bvalue":Z
    :goto_1
    return-void

    .line 95
    .restart local v1    # "bvalue":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    return-void
.end method

.method public getImsConfig(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 138
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x47

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4a

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    .line 142
    .local v1, "val_int":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .end local v1    # "val_int":I
    nop

    .line 146
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 148
    :cond_2
    return-object v0
.end method

.method public getImsConfigInt(I)I
    .locals 3
    .param p1, "item"    # I

    .line 120
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "str":Ljava/lang/String;
    const/4 v1, -0x1

    .line 124
    .local v1, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 126
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 128
    :goto_0
    return v1
.end method

.method public getImsFeatureInt(I)I
    .locals 1
    .param p1, "feature"    # I

    .line 74
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v0

    .line 75
    .local v0, "value":Z
    return v0
.end method

.method public isImsConfigExist(I)Z
    .locals 2
    .param p1, "item"    # I

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImsFeatureExist(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setImsConfig(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public setImsConfig(ILjava/lang/String;)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsConfig: value is null string for item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->loge(Ljava/lang/String;)V

    .line 155
    const-string p2, ""

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "prev_value":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, ", name="

    const-string v2, ", value="

    if-nez v0, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsConfig: new item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsConfig: update item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_3
    return-void
.end method

.method public setImsFeatureInt(II)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 70
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsFeature(IZ)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ImsConfigImplCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "\tImsFeatureCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 200
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

    .line 201
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v7, "\t\tFeature="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 207
    :cond_0
    const-string v2, "\tImsConfigCache\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 209
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

    .line 210
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v8, "\t\tItem="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
