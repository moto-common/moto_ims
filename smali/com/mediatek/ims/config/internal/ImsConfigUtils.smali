.class public Lcom/mediatek/ims/config/internal/ImsConfigUtils;
.super Ljava/lang/Object;
.source "ImsConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigUtils$WfcModeFeatureValueConstants;,
        Lcom/mediatek/ims/config/internal/ImsConfigUtils$MdConfigType;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final DEBUG:Z

.field private static final EXTRA_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "state"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field private static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vce_avail_ovr"

.field private static final PROPERTY_DBG_VCE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field private static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field private static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.ims_support"

.field public static final PROPERTY_IMS_VIDEO_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.ims.video.enable"

.field public static final PROPERTY_VILTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field public static final PROPERTY_VIWIFI_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field public static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.volte.enable"

.field public static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static SYSTEM_PROPERTY_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsConfigUtils"

.field private static final TELDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 67
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
    sput-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    .line 68
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    .line 385
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->SYSTEM_PROPERTY_NOT_SET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 491
    const-string v0, "null"

    if-nez p0, :cond_0

    .line 492
    return-object v0

    .line 494
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 496
    .local v1, "maxLength":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 497
    return-object v0

    .line 500
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, "i":I
    :goto_0
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    if-ne v3, v1, :cond_2

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 507
    :cond_2
    const-string v4, "\",\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static checkIsPhoneIdValid(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 248
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    const-string v1, "ImsConfigUtils"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 249
    if-gt p0, v3, :cond_0

    if-gez p0, :cond_3

    .line 250
    :cond_0
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi IMS support but phone id invalid, phoneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    return v2

    .line 255
    :cond_2
    if-gt p0, v3, :cond_4

    if-gez p0, :cond_3

    goto :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutli IMS not support and phone id invalid, phoneId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    return v2
.end method

.method public static converMtkWFCModeValuetToMotoWFCModeValue(I)I
    .locals 1
    .param p0, "value"    # I

    .line 364
    packed-switch p0, :pswitch_data_0

    .line 368
    return p0

    .line 366
    :pswitch_0
    const/16 v0, 0xa

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMotoWFCModeValueToMtkWFCModeValue(I)I
    .locals 1
    .param p0, "value"    # I

    .line 355
    packed-switch p0, :pswitch_data_0

    .line 359
    return p0

    .line 357
    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static getActiveSubIdForPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 266
    const/4 v0, -0x1

    .line 267
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 268
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_0

    .line 269
    nop

    .line 270
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 271
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 275
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method public static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 288
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 290
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 291
    .local v1, "subId":I
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const/4 v2, 0x0

    .line 294
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 297
    :cond_1
    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 301
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static getBooleanDeviceConfig(Landroid/content/Context;II)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "resId"    # I

    .line 442
    invoke-static {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 443
    .local v0, "subId":I
    invoke-static {p0, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 444
    .local v1, "value":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanDeviceConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v1
.end method

.method public static getFeaturePropValue(Ljava/lang/String;I)I
    .locals 6
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "defaultPropValue":I
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "featureValue":I
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->checkIsPhoneIdValid(I)Z

    move-result v2

    const-string v3, "ImsConfigUtils"

    if-nez v2, :cond_1

    .line 127
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi IMS getFeaturePropValue():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", phoneId invalid return default value"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return v0

    .line 131
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 132
    shl-int v2, v5, p1

    and-int/2addr v2, v1

    if-lez v2, :cond_2

    move v4, v5

    :cond_2
    move v2, v4

    .local v2, "propResult":I
    goto :goto_0

    .line 135
    .end local v2    # "propResult":I
    :cond_3
    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_4

    move v4, v5

    :cond_4
    move v2, v4

    .line 137
    .restart local v2    # "propResult":I
    :goto_0
    sget-boolean v4, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multi IMS getFeaturePropValue() featureValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", propName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", propResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_5
    return v2
.end method

.method public static getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 314
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 316
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 317
    .local v1, "subId":I
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 320
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 323
    :cond_1
    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 327
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getWfcMode(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "wfcMode":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v0

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v0

    .line 350
    :goto_0
    return v0
.end method

.method public static isCarrierConfigLoaded(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 452
    const-string v0, "carrier_config_applied_bool"

    invoke-static {p0, v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 455
    .local v0, "bLoaded":Z
    if-nez v0, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    return v0
.end method

.method public static isConfigRequestValid(II)Z
    .locals 2
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .line 467
    const/4 v0, -0x1

    .line 470
    .local v0, "configType":I
    if-ltz p0, :cond_0

    const/16 v1, 0x4a

    if-gt p0, v1, :cond_0

    .line 472
    sparse-switch p0, :sswitch_data_0

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    :sswitch_0
    const/4 v0, 0x2

    .line 486
    :cond_0
    :goto_0
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x1f -> :sswitch_0
        0x36 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method public static isGbaValid(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 406
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-static {p0, v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 409
    invoke-static {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 410
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 411
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "efIst":Ljava/lang/String;
    const-string v4, "ImsConfigUtils"

    if-nez v3, :cond_0

    .line 413
    const-string v5, "isGbaValid - ISF is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1

    .line 416
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 417
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 418
    .local v1, "result":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGbaValid - GBA capable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ISF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v1

    .line 421
    .end local v0    # "subId":I
    .end local v1    # "result":Z
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "efIst":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 390
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 393
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    const v0, 0x1110125

    invoke-static {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const-string v0, "carrier_volte_available_bool"

    invoke-static {p0, v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-static {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 398
    :goto_0
    return v2

    .line 395
    :cond_2
    :goto_1
    return v2
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 426
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget v0, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->SYSTEM_PROPERTY_NOT_SET:I

    .line 428
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    const v0, 0x1110128

    invoke-static {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanDeviceConfig(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-static {p0, v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-static {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 433
    :goto_0
    return v2

    .line 430
    :cond_2
    :goto_1
    return v2
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "wfcSetting":Z
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .line 339
    :goto_0
    return v0
.end method

.method public static sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 107
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 115
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    :cond_1
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->TELDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWifiOnlyModeIntent() intent, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method private static setBitForPhone(III)I
    .locals 1
    .param p0, "featureValue"    # I
    .param p1, "enabled"    # I
    .param p2, "phoneId"    # I

    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 171
    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    .local v0, "result":I
    goto :goto_0

    .line 173
    .end local v0    # "result":I
    :cond_0
    shl-int/2addr v0, p2

    not-int v0, v0

    and-int/2addr v0, p0

    .line 175
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public static setFeaturePropValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "enabled"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "defaultPropValue":I
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "featureValue":I
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->checkIsPhoneIdValid(I)Z

    move-result v2

    const-string v3, "ImsConfigUtils"

    if-nez v2, :cond_1

    .line 149
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi IMS setFeaturePropValue():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", phoneId invalid don\'t set and return"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-void

    .line 153
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "enabledValue":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-static {v1, v2, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->setBitForPhone(III)I

    move-result v4

    .local v4, "sumFeatureValue":I
    goto :goto_0

    .line 158
    .end local v4    # "sumFeatureValue":I
    :cond_2
    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->setBitForPhone(III)I

    move-result v4

    .line 160
    .restart local v4    # "sumFeatureValue":I
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-boolean v5, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->DEBUG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multi IMS setFeaturePropValue() featureValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", propName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sumFeatureValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabledValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    return-void
.end method

.method public static triggerSendCfg(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 181
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 182
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 185
    .local v1, "isAllowTurnOff":I
    :goto_0
    const-string v4, "persist.vendor.mtk.volte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 186
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 187
    const-string v4, "persist.vendor.mtk.wfc.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 188
    const-string v4, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    aput v4, v0, v6

    .line 189
    const-string v4, "persist.vendor.ims_support"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x4

    aput v4, v0, v7

    .line 192
    aget v4, v0, v3

    aget v8, v0, v2

    or-int/2addr v4, v8

    aget v8, v0, v5

    or-int/2addr v4, v8

    aget v8, v0, v6

    or-int/2addr v4, v8

    aget v8, v0, v7

    or-int/2addr v4, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v4, v8

    const/4 v8, 0x5

    aput v4, v0, v8

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After 93, send EIMS feature value volte:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vilte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vowifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viwifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eims:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 199
    return-void
.end method

.method public static triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I
    .param p3, "volteOn"    # I

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 204
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 205
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 208
    .local v1, "isAllowTurnOff":I
    :goto_0
    aput p3, v0, v3

    .line 209
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 210
    const-string v4, "persist.vendor.mtk.wfc.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 211
    const-string v4, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    aput v4, v0, v6

    .line 212
    const-string v4, "persist.vendor.ims_support"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x4

    aput v4, v0, v7

    .line 215
    aget v4, v0, v3

    aget v8, v0, v2

    or-int/2addr v4, v8

    aget v8, v0, v5

    or-int/2addr v4, v8

    aget v8, v0, v6

    or-int/2addr v4, v8

    aget v8, v0, v7

    or-int/2addr v4, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v4, v8

    const/4 v8, 0x5

    aput v4, v0, v8

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After 93, send EIMS feature value volte:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vilte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vowifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viwifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eims:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 222
    return-void
.end method

.method public static triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I
    .param p3, "volteOn"    # I
    .param p4, "vowifiOn"    # I

    .line 226
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 227
    .local v0, "params":[I
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 228
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 231
    .local v1, "isAllowTurnOff":I
    :goto_0
    aput p3, v0, v3

    .line 232
    const-string v4, "persist.vendor.mtk.vilte.enable"

    invoke-static {v4, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v2

    .line 233
    const/4 v4, 0x2

    aput p4, v0, v4

    .line 234
    const-string v5, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v5, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v0, v6

    .line 235
    const-string v5, "persist.vendor.ims_support"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x4

    aput v5, v0, v7

    .line 238
    aget v5, v0, v3

    aget v8, v0, v2

    or-int/2addr v5, v8

    aget v8, v0, v4

    or-int/2addr v5, v8

    aget v8, v0, v6

    or-int/2addr v5, v8

    aget v8, v0, v7

    or-int/2addr v5, v8

    xor-int/lit8 v8, v1, 0x1

    or-int/2addr v5, v8

    const/4 v8, 0x5

    aput v5, v0, v8

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send EIMS feature value volte:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", vilte:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vowifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viwifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAllowTurnOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eims:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfg([IILandroid/os/Message;)V

    .line 245
    return-void
.end method
