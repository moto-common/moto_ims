.class Lcom/mediatek/ims/rcs/UaServiceManager$4;
.super Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 516
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 3
    .param p1, "message"    # [B

    .line 520
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageReceived >> size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$4$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$4$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$4;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 545
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageSendFailure >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], reason["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$4$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$4$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$4;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageSent >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$4$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$4$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method

.method public onAvailable()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v1, "SIP onAvailable"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$4$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$4$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v1, "SIP onUnavailable"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$4$5;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$4$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method
