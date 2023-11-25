.class public Lcom/mediatek/ims/ImsCommonUtil;
.super Ljava/lang/Object;
.source "ImsCommonUtil.java"


# static fields
.field public static final ENGLOAD:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCommonUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 64
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 65
    .local v0, "hexArray":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 66
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 67
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 68
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 69
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 66
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static callComposerCapable()Z
    .locals 1

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultRcsPhoneId()I
    .locals 3

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 211
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 216
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    const/4 v0, 0x0

    .line 219
    :cond_1
    return v0
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 3

    .line 116
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 117
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 118
    :cond_0
    const/4 v0, -0x1

    .line 120
    :cond_1
    sget-boolean v1, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsCommonUtil"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    return v0
.end method

.method public static getMainPhoneIdForSingleIms()I
    .locals 3

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 155
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMainPhoneIdForSingleIms] : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsCommonUtil"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1
.end method

.method public static getProtocolStackId(I)I
    .locals 2
    .param p0, "slot"    # I

    .line 164
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 165
    .local v0, "majorSlot":I
    if-ne p0, v0, :cond_0

    .line 166
    const/4 v1, 0x1

    return v1

    .line 168
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->isDssNoResetSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    if-ge p0, v0, :cond_2

    .line 170
    add-int/lit8 v1, p0, 0x2

    return v1

    .line 172
    :cond_1
    if-nez p0, :cond_2

    .line 173
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 175
    :cond_2
    add-int/lit8 v1, p0, 0x1

    return v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 12
    .param p0, "inputString"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 83
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 86
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hexToBytes: inputLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCommonUtil"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 88
    .local v2, "result":[B
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 89
    .local v4, "temp":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    div-int/lit8 v6, v1, 0x2

    if-ge v5, v6, :cond_5

    .line 90
    mul-int/lit8 v6, v5, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x0

    aput v6, v4, v7

    .line 91
    mul-int/lit8 v6, v5, 0x2

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput v6, v4, v8

    .line 92
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_4

    .line 93
    aget v9, v4, v6

    const/16 v10, 0x41

    if-lt v9, v10, :cond_1

    aget v9, v4, v6

    const/16 v11, 0x46

    if-gt v9, v11, :cond_1

    .line 94
    aget v9, v4, v6

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xa

    aput v9, v4, v6

    goto :goto_2

    .line 95
    :cond_1
    aget v9, v4, v6

    const/16 v10, 0x61

    if-lt v9, v10, :cond_2

    aget v9, v4, v6

    const/16 v11, 0x66

    if-gt v9, v11, :cond_2

    .line 96
    aget v9, v4, v6

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xa

    aput v9, v4, v6

    goto :goto_2

    .line 97
    :cond_2
    aget v9, v4, v6

    const/16 v10, 0x30

    if-lt v9, v10, :cond_3

    aget v9, v4, v6

    const/16 v11, 0x39

    if-gt v9, v11, :cond_3

    .line 98
    aget v9, v4, v6

    sub-int/2addr v9, v10

    aput v9, v4, v6

    .line 92
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    :cond_3
    return-object v0

    .line 103
    .end local v6    # "j":I
    :cond_4
    aget v6, v4, v7

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 104
    aget-byte v6, v2, v5

    aget v7, v4, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .end local v5    # "i":I
    :cond_5
    return-object v2
.end method

.method public static isDefaultRcsPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 223
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDssNoResetSupport()Z
    .locals 2

    .line 125
    const-string v0, "vendor.ril.simswitch.no_reset_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsCommonUtil"

    if-eqz v0, :cond_1

    .line 126
    sget-boolean v0, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    if-eqz v0, :cond_0

    const-string v0, "return true for isDssNoResetSupport"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_1
    sget-boolean v0, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    if-eqz v0, :cond_2

    const-string v0, "return false for isDssNoResetSupport"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isPhoneIdSupportIms(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "result":Z
    const-string v1, "persist.vendor.ims_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "isImsSupport":I
    const-string v2, "persist.vendor.mims_support"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 184
    .local v2, "mimsCount":I
    const-string v4, "ImsCommonUtil"

    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    if-ne v2, v3, :cond_1

    .line 190
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, p0, :cond_3

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/mediatek/ims/ImsCommonUtil;->getProtocolStackId(I)I

    move-result v3

    .line 196
    .local v3, "protocalStackId":I
    if-gt v3, v2, :cond_2

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPhoneIdSupportIms(), mimsCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", protocalStackId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", MainCapabilityPhoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v3    # "protocalStackId":I
    :cond_3
    :goto_0
    return v0

    .line 185
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneIdSupportIms(), not support IMS, phoneId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method public static packageEnabled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    invoke-static {p0, p1}, Lcom/mediatek/ims/ImsCommonUtil;->packageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 248
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 250
    const/4 v1, 0x1

    return v1

    .line 253
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static packageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "installed":Z
    const-string v1, "ImsCommonUtil"

    if-nez p1, :cond_0

    .line 261
    const-string v2, "should not be here! Context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_2

    .line 268
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 269
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const/4 v0, 0x1

    .line 276
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    goto :goto_0

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is NOT found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    return v0
.end method

.method public static rcsSingleRegistrationCapable()Z
    .locals 5

    .line 227
    const-string v0, "persist.vendor.mtk_rcs_single_reg_support"

    .line 228
    .local v0, "PROP_RCS_SINGLE_REG":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    .line 230
    .local v1, "PROP_RCS_UA_SUPPORT":Ljava/lang/String;
    const-string v2, "persist.vendor.mtk_rcs_single_reg_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 231
    const-string v2, "persist.vendor.mtk_rcs_ua_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    .line 230
    :goto_0
    return v3
.end method

.method public static supportMdAutoSetupIms()Z
    .locals 2

    .line 134
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static supportMims()Z
    .locals 2

    .line 148
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
