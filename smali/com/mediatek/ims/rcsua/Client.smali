.class public final Lcom/mediatek/ims/rcsua/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private volatile activeChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/rcsua/SipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private callbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/ImsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private lock:Ljava/lang/Object;

.field private service:Lcom/mediatek/ims/rcsua/RcsUaService;

.field sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p2, "clientIntf"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Lcom/mediatek/ims/rcsua/Client$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/Client$1;-><init>(Lcom/mediatek/ims/rcsua/Client;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->lock:Ljava/lang/Object;

    .line 237
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/Client;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 238
    iput-object p2, p0, Lcom/mediatek/ims/rcsua/Client;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/Client;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/Client;

    .line 56
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method channelClosed(Lcom/mediatek/ims/rcsua/SipChannel;)I
    .locals 3
    .param p1, "channel"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, "activeChannelNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelClosed, activeChannelNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 248
    :cond_0
    return v0
.end method

.method getInterface()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method public getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "regInfo":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 166
    :goto_0
    if-nez v0, :cond_0

    .line 167
    new-instance v1, Lcom/mediatek/ims/rcsua/RegistrationInfo;

    invoke-direct {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;-><init>()V

    move-object v0, v1

    .line 169
    :cond_0
    return-object v0

    .line 156
    .end local v0    # "regInfo":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleImsDeregInd(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 8
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 216
    const-string v0, "[RcsUaService][API]"

    const-string v1, "handleImsDeregInd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v0, 0x80

    .line 219
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 221
    .local v1, "mode":I
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 222
    .local v3, "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    new-instance v4, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v3, v5}, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/ImsEventCallback;[Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 223
    .end local v3    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method handleImsEventCallback(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 8
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 194
    const-string v0, "[RcsUaService][API]"

    const-string v1, "handleImsEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 197
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 199
    .local v1, "mode":I
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 200
    .local v3, "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    new-instance v4, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v3, v5}, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/ImsEventCallback;[Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 201
    .end local v3    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method handleImsReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 8
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 205
    const-string v0, "[RcsUaService][API]"

    const-string v1, "handleImsReregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v0, 0x100

    .line 208
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 210
    .local v1, "mode":I
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 211
    .local v3, "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    new-instance v4, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v3, v5}, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/ImsEventCallback;[Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 212
    .end local v3    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method handleVopsInd(I)V
    .locals 8
    .param p1, "vops"    # I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVopsInd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v0, 0x200

    .line 230
    .local v0, "state":I
    const/4 v1, 0x0

    .line 231
    .local v1, "mode":I
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 232
    .local v3, "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    new-instance v4, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v3, v5}, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/ImsEventCallback;[Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 233
    .end local v3    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public openSipChannel(ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;I)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 9
    .param p1, "transport"    # I
    .param p2, "sipCallback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const-string v0, "sipCallback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client openSipChannel with active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 102
    :try_start_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 103
    .local v1, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Client;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    invoke-interface {v2, v3, p3, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 104
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->throwException()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 109
    monitor-exit v0

    return-object v2

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcsua/SipChannel;

    .line 115
    .local v1, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/SipChannel;->isTransportSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    return-object v1

    .line 117
    .end local v1    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    :cond_3
    goto :goto_1

    .line 120
    :cond_4
    :goto_2
    new-instance v0, Lcom/mediatek/ims/rcsua/SipChannel;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Client;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    iget-object v6, p0, Lcom/mediatek/ims/rcsua/Client;->channelIntf:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-object v3, v0

    move-object v5, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/ims/rcsua/SipChannel;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/Client;Lcom/mediatek/ims/rcsua/service/ISipChannel;ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;)V

    .line 121
    .local v0, "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->activeChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-object v0

    .line 95
    .end local v0    # "channel":Lcom/mediatek/ims/rcsua/SipChannel;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 2
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x3

    .line 68
    .local v0, "transport":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;I)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    return-object v1
.end method

.method public openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;I)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 2
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x3

    .line 81
    .local v0, "transport":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(ILcom/mediatek/ims/rcsua/SipChannel$EventCallback;I)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    return-object v1
.end method

.method public registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 132
    const-string v0, "ImsEventCallback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeImsDeregistration()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->service:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->resumeImsDeregistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 143
    const-string v0, "ImsEventCallback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Client;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Client;->callbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
