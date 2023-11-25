.class public final Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;
.super Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;
.source "MtkMotoExtImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkMotoExtImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MotoExtImsImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkMotoExtImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkMotoExtImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkMotoExtImsService;

    .line 58
    iput-object p1, p0, Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;->this$0:Lcom/mediatek/ims/MtkMotoExtImsService;

    invoke-direct {p0}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigInterface(I)Lcom/motorola/android/ims/internal/IMotoExtImsConfig;
    .locals 1
    .param p1, "subId"    # I

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWfcMDN(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCallComposerEnabledByPlatform(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isChatBotEnabledByPlatform(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isImsOverNrEnabledByPlatform(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isVceEnabledByPlatform(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isWfcEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public queryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "listener"    # Lcom/motorola/android/ims/internal/IMotoExtImsListener;

    .line 84
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 85
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;->this$0:Lcom/mediatek/ims/MtkMotoExtImsService;

    invoke-virtual {v1, v0, p2}, Lcom/mediatek/ims/MtkMotoExtImsService;->onQueryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;)V

    .line 86
    return-void
.end method

.method public setWfcMDN(ILjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mdn"    # Ljava/lang/String;

    .line 65
    return-void
.end method
