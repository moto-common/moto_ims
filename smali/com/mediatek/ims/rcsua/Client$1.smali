.class Lcom/mediatek/ims/rcsua/Client$1;
.super Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/Client;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/Client;

    .line 251
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Client$1;->this$0:Lcom/mediatek/ims/rcsua/Client;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public availabilityChanged(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client$1;->this$0:Lcom/mediatek/ims/rcsua/Client;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/Client;->access$000(Lcom/mediatek/ims/rcsua/Client;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcsua/SipChannel;

    .line 279
    .local v0, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/SipChannel;->handleAvailability(Z)V

    .line 280
    nop

    .line 282
    .end local v0    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    :cond_0
    return-void
.end method

.method public messageReceived(I[B)V
    .locals 3
    .param p1, "transport"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client$1;->this$0:Lcom/mediatek/ims/rcsua/Client;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/Client;->access$000(Lcom/mediatek/ims/rcsua/Client;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcsua/SipChannel;

    .line 255
    .local v1, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/SipChannel;->isTransportSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v1, p2}, Lcom/mediatek/ims/rcsua/SipChannel;->handleSipMessageReceived([B)V

    .line 257
    goto :goto_1

    .line 259
    .end local v1    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    :goto_1
    return-void
.end method

.method public messageSendFail(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client$1;->this$0:Lcom/mediatek/ims/rcsua/Client;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/Client;->access$000(Lcom/mediatek/ims/rcsua/Client;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcsua/SipChannel;

    .line 272
    .local v1, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/rcsua/SipChannel;->handleSipMessageSendFail(Ljava/lang/String;I)V

    .line 273
    .end local v1    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 2
    .param p1, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client$1;->this$0:Lcom/mediatek/ims/rcsua/Client;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/Client;->access$000(Lcom/mediatek/ims/rcsua/Client;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcsua/SipChannel;

    .line 265
    .local v1, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/SipChannel;->handleSipMessageSent(Ljava/lang/String;)V

    .line 266
    .end local v1    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method
