.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;
.super Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 676
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 3
    .param p1, "message"    # [B

    .line 680
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]SIP messageReceived >> size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 705
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]SIP messageSendFailure >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], reason["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]SIP messageSent >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 702
    return-void
.end method

.method public onAvailable()V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]SIP onAvailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]SIP onUnavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$5;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    return-void
.end method
