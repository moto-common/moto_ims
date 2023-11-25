.class public Lcom/mediatek/ims/internal/ImsVTUsageManager;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImsVT Usage"

.field public static final VILTE_UID:I = 0x3e9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field public mId:I

.field private mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mNeedReportDataUsage:Z

.field private mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field protected mSimId:I

.field public mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 251
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    .line 254
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Current"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 255
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Previous"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 256
    return-void
.end method

.method private canRequestDataUsage()Z
    .locals 5

    .line 309
    const-string v0, "ImsVT Usage"

    const-string v1, "[canRequestDataUsage]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, "persist.vendor.vt.data_simulate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 312
    .local v1, "forceRequest":Z
    if-eqz v1, :cond_0

    .line 313
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 318
    .local v2, "subId":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 323
    .local v3, "ignoreDataEnabledChanged":Z
    iget-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 325
    const-string v4, "[canRequestDataUsage] set dataUsage as false"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 329
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    return v0
.end method

.method private getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 334
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 336
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 338
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 342
    :cond_0
    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 346
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private getTagUsage(Landroid/net/NetworkStats;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 28
    .param p1, "uidSnapshot"    # Landroid/net/NetworkStats;

    .line 351
    const-string v0, "ImsVT Usage"

    const-string v1, "getTagUsage uid:1001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-wide/16 v1, 0x0

    .line 354
    .local v1, "TotalLteTxBytes":J
    const-wide/16 v3, 0x0

    .line 355
    .local v3, "TotalLteRxBytes":J
    const-wide/16 v5, 0x0

    .line 356
    .local v5, "TotalWifiTxBytes":J
    const-wide/16 v7, 0x0

    .line 358
    .local v7, "TotalWifiRxBytes":J
    const/4 v9, 0x0

    .line 360
    .local v9, "entry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v10, p0

    iget v11, v10, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    const/high16 v12, -0x1000000

    add-int/2addr v12, v11

    .line 361
    .local v12, "lte_tag":I
    const/high16 v13, -0xf00000

    add-int/2addr v11, v13

    .line 363
    .local v11, "wifi_tag":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 365
    move-object/from16 v15, p1

    invoke-virtual {v15, v13, v9}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v9

    .line 368
    iget v14, v9, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v10, 0x3e9

    if-ne v14, v10, :cond_0

    iget v14, v9, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v14, v12, :cond_0

    .line 370
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTaggedSnapshot LTE entry:"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-wide v14, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v14

    .line 373
    iget-wide v14, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v3, v14

    .line 377
    :cond_0
    iget v10, v9, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v14, 0x3e9

    if-ne v10, v14, :cond_1

    iget v10, v9, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v10, v11, :cond_1

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTaggedSnapshot WiFi entry:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-wide v14, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v5, v14

    .line 382
    iget-wide v14, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v7, v14

    .line 363
    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, p0

    goto :goto_0

    .line 386
    .end local v13    # "j":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTaggedSnapshot LTE: Tx="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", Rx="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", Total="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v15, v1, v3

    .line 388
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 386
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTaggedSnapshot WiFi: Tx="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v5, v7

    .line 391
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 389
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    add-long v20, v3, v1

    add-long v26, v7, v5

    const-string v15, "Tag"

    move-object v14, v0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    invoke-direct/range {v14 .. v27}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;JJJJJJ)V

    return-object v0
.end method

.method private updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 25
    .param p1, "tagUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 400
    .local v2, "subId":I
    iget-object v3, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 401
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "subscriberId":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v7

    .line 404
    .local v7, "initWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v10

    .line 405
    .local v10, "initWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v13

    .line 407
    .local v13, "initWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v15

    .line 408
    .local v15, "curWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v17

    .line 409
    .local v17, "curWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v19

    .line 411
    .local v19, "curWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v12, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 417
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-nez v5, :cond_1

    .line 418
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    cmp-long v5, v21, v23

    if-nez v5, :cond_0

    .line 420
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .local v21, "initWifiRxBytes":J
    add-long v9, v15, v7

    invoke-virtual {v1, v6, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 421
    add-long v10, v17, v21

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v10, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 422
    add-long v9, v19, v13

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    goto :goto_0

    .line 418
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_0
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    goto :goto_0

    .line 417
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_1
    move-wide/from16 v21, v10

    .line 425
    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    :goto_0
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v9, v10, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 427
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 428
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 431
    new-instance v9, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v11, "Delta"

    invoke-direct {v9, v11, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 432
    .local v9, "deltaUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendVTusageBroadcast:  lterxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", ltetxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", wifirxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", wifiTxbytes="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    const-string v6, "ImsVT Usage"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 449
    iget v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->onCallDataUsageChanged(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 452
    :cond_2
    return-void
.end method


# virtual methods
.method public requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 10

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT Usage"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->canRequestDataUsage()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 279
    return-object v3

    .line 285
    :cond_0
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 286
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v4

    .line 289
    .local v4, "mStatsService":Landroid/net/INetworkStatsService;
    const/16 v5, 0x3e9

    :try_start_0
    invoke-interface {v4, v5}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v5

    .line 290
    .local v5, "uidSnapshot":Landroid/net/NetworkStats;
    if-nez v5, :cond_1

    .line 291
    const-string v1, "fail to getDataLayerSnapshotForUid"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v3

    .line 294
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getTagUsage(Landroid/net/NetworkStats;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v6

    .line 295
    .local v6, "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 297
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onRequestCallDataUsage] Finish (VIWIFI usage:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v8, 0x3

    .line 298
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 302
    .end local v5    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v6    # "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v3
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 271
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mContext:Landroid/content/Context;

    .line 272
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 259
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    .line 260
    return-void
.end method

.method public setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0
    .param p1, "initUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 267
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 268
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .param p1, "simId"    # I

    .line 263
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    .line 264
    return-void
.end method
