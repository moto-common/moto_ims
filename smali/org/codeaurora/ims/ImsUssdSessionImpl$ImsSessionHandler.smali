.class Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
.super Landroid/os/Handler;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUssdSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->access$000(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 149
    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->access$300(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->access$200(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 155
    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->access$100(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 152
    nop

    .line 160
    :goto_0
    return-void
.end method
