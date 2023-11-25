.class Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;
.super Ljava/lang/Object;
.source "ImsConfigEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->setVoiceDomainSetting(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    .line 366
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 368
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 369
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 373
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v2

    .line 374
    .local v2, "carrierId":I
    const/16 v3, 0x7a0

    if-ne v2, v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SetVoiceDomainSetting invalid"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    .line 380
    invoke-static {v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 381
    .local v3, "bEnabled":Z
    :goto_1
    if-eqz v3, :cond_4

    const/4 v4, 0x3

    goto :goto_2

    .line 382
    :cond_4
    nop

    :goto_2
    nop

    .line 384
    .local v4, "voiceDomain":I
    new-instance v5, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 385
    .local v5, "mMotoExtTM":Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    if-eq v4, v6, :cond_5

    .line 386
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    invoke-static {v6}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetVoiceDomainSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_5
    return-void
.end method
