.class public Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.source "MtkDynamicImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkDynamicImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEventCallbackExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkDynamicImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkDynamicImsService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkDynamicImsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 387
    iput-object p1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    .line 388
    invoke-direct {p0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;-><init>(Landroid/os/Handler;)V

    .line 389
    return-void
.end method


# virtual methods
.method public onCallComposerChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 432
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 433
    .local v0, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->notifyCcCapabilityChange(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public onDeregistered(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 414
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 415
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_0

    .line 416
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 417
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    .line 418
    .local v2, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v2, :cond_0

    .line 419
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 423
    .end local v2    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_0
    return-void
.end method

.method public onRegistered(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 393
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 394
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_2

    .line 395
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getUpdateRcsFeatureTagState()Z

    move-result v1

    .line 397
    .local v1, "state":Z
    if-nez v1, :cond_0

    .line 398
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v2}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 400
    .end local v1    # "state":Z
    :cond_0
    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v2

    .line 403
    .local v2, "config":Lcom/mediatek/ims/rcsua/Configuration;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    .line 404
    .local v3, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v3, :cond_2

    .line 405
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 410
    .end local v2    # "config":Lcom/mediatek/ims/rcsua/Configuration;
    .end local v3    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_2
    :goto_0
    return-void
.end method

.method public onReregistered(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 427
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 428
    return-void
.end method
