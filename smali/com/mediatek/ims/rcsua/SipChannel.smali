.class public final Lcom/mediatek/ims/rcsua/SipChannel;
.super Ljava/lang/Object;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;,
        Lcom/mediatek/ims/rcsua/SipChannel$ChannelMode;
    }
.end annotation


# static fields
.field public static final MODE_STANDALONE_PRESENCE:I = 0x1

.field public static final MODE_UNIFIED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private client:Lcom/mediatek/ims/rcsua/Client;

.field private service:Lcom/mediatek/ims/rcsua/RcsUaService;

.field private transport:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/Client;Lcom/mediatek/ims/rcsua/service/ISipChannel;ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p2, "client"    # Lcom/mediatek/ims/rcsua/Client;
    .param p3, "channel"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 252
    iput-object p5, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 253
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 254
    iput-object p2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->client:Lcom/mediatek/ims/rcsua/Client;

    .line 255
    iput p4, p0, Lcom/mediatek/ims/rcsua/SipChannel;->transport:I

    .line 256
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->client:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/rcsua/Client;->channelClosed(Lcom/mediatek/ims/rcsua/SipChannel;)I

    move-result v0

    .line 128
    .local v0, "restActiveChannelNum":I
    if-nez v0, :cond_1

    .line 129
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 130
    .local v1, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    nop

    .line 136
    :goto_1
    return-void
.end method

.method handleAvailability(Z)V
    .locals 5
    .param p1, "availability"    # Z

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    new-instance v1, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;-><init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->run(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method handleSipMessageReceived([B)V
    .locals 4
    .param p1, "message"    # [B

    .line 263
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    new-instance v1, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[[B)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->run(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method handleSipMessageSendFail(Ljava/lang/String;I)V
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    new-instance v1, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;-><init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->run(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method handleSipMessageSent(Ljava/lang/String;)V
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->callback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    new-instance v1, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;-><init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->run(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "connected":Z
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 149
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 152
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]: channelIntf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v0
.end method

.method isTransportSupported(I)Z
    .locals 1
    .param p1, "transport"    # I

    .line 259
    iget v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->transport:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendMessage([B)V
    .locals 2
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-string v0, "message should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 90
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    .line 91
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->throwException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SIP channel not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessageAsync([BLjava/lang/String;)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "transactionId"    # Ljava/lang/String;

    .line 105
    const-string v0, "message should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "transactionId should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/rcsua/SipChannel;->handleSipMessageSendFail(Ljava/lang/String;I)V

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAsync([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    return-void
.end method
