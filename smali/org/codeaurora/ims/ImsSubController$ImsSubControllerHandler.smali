.class Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;
.super Landroid/os/Handler;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSubControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    .line 283
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 284
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 286
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    .line 287
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->access$000(Lorg/codeaurora/ims/ImsSubController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "handleMessage, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return-void

    .line 298
    :cond_0
    const/4 v0, -0x1

    .line 300
    .local v0, "phoneId":I
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 328
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 329
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_RADIO_NOT_AVAILABLE phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v3, v0, v2}, Lorg/codeaurora/ims/ImsSubController;->access$700(Lorg/codeaurora/ims/ImsSubController;IZ)V

    .line 332
    goto/16 :goto_1

    .line 335
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 336
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_RADIO_AVAILABLE phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSubController;->access$500(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    .line 339
    invoke-static {v3}, Lorg/codeaurora/ims/ImsSubController;->access$600(Lorg/codeaurora/ims/ImsSubController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 340
    goto/16 :goto_1

    .line 319
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    move v0, v1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_IMS_SERVICE_DOWN phoneId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$500(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$500(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSubController;->access$600(Lorg/codeaurora/ims/ImsSubController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 324
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsSubController;->access$700(Lorg/codeaurora/ims/ImsSubController;IZ)V

    .line 325
    goto/16 :goto_1

    .line 309
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    move v0, v1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_IMS_SERVICE_UP phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$200(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$200(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 312
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSubController;->access$300(Lorg/codeaurora/ims/ImsSubController;I)V

    goto :goto_1

    .line 314
    :cond_2
    const-string v1, "Single SIM mode"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$400(Lorg/codeaurora/ims/ImsSubController;)V

    .line 317
    goto :goto_1

    .line 303
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 304
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SubConfig Event phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsSubController;->access$100(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 307
    goto :goto_1

    .line 342
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    goto :goto_2

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "exc":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage :: Invalid phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .end local v1    # "exc":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
