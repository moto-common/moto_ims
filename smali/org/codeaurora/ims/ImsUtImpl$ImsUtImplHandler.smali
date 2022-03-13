.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 1

    .line 665
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V

    .line 666
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 668
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 669
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 670
    return-void
.end method

.method private handleCFUTResponse(Lorg/codeaurora/telephony/utils/AsyncResult;Landroid/os/Message;)V
    .locals 22
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "msg"    # Landroid/os/Message;

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 676
    .local v3, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x324

    const/4 v8, 0x1

    if-ge v4, v8, :cond_0

    .line 677
    const-string v4, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v8, v1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v9, v7, v6, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 681
    return-void

    .line 684
    :cond_0
    const/4 v4, 0x0

    .line 686
    .local v4, "badCfResponse":Z
    array-length v9, v3

    new-array v9, v9, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 689
    .local v9, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v10, 0x0

    .line 690
    .local v10, "callForwardStatus":I
    const/4 v11, -0x1

    .line 691
    .local v11, "condition":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v3

    if-ge v12, v13, :cond_5

    .line 692
    aget-object v13, v3, v12

    .line 694
    .local v13, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget v14, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v14, v8, :cond_1

    .line 695
    const/4 v10, 0x1

    goto :goto_1

    .line 697
    :cond_1
    iget v14, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v14, :cond_2

    .line 698
    const/4 v10, 0x0

    goto :goto_1

    .line 701
    :cond_2
    const/4 v4, 0x1

    .line 702
    const-string v14, "Bad status in Query CFUT response."

    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    :goto_1
    iget v14, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v14, :cond_3

    .line 706
    const/4 v11, 0x0

    goto :goto_2

    .line 709
    :cond_3
    const/4 v4, 0x1

    .line 710
    const-string v14, "Bad reason in Query CFUT response."

    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    :goto_2
    if-eqz v4, :cond_4

    .line 714
    iget-object v8, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v8

    iget v14, v1, Landroid/os/Message;->arg1:I

    new-instance v15, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v15, v7, v6, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 717
    return-void

    .line 720
    :cond_4
    new-instance v21, Landroid/telephony/ims/ImsCallForwardInfo;

    const/16 v17, 0x0

    iget v15, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    new-instance v14, Ljava/lang/String;

    iget-object v5, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object v5, v14

    move-object/from16 v14, v21

    move/from16 v18, v15

    move v15, v11

    move/from16 v16, v10

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v20}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v21, v9, v12

    .line 691
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 724
    .end local v12    # "i":I
    .end local v13    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_5
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 726
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const-string v4, "SuppSvc "

    const-string v5, "SuppSvcResponse failure with neither errordetails nor failurecause"

    const-string v7, "SuppSvcResponse failure with neither ar.result nor userObj"

    const-string v8, "Success callback on Query event= "

    const-string v9, "Error for Query Event= "

    const-string v11, "Service= "

    const-string v12, "Success callback called for msg.what= "

    const/4 v13, 0x0

    const-string v14, "Invalid message id received in handleMessage."

    const-string v15, "ImsUtImpl"

    const/4 v10, 0x0

    const/16 v6, 0x324

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_11

    .line 1351
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1352
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1353
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ims/ImsSsData;

    .line 1354
    .local v3, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 1355
    .end local v3    # "ssData":Landroid/telephony/ims/ImsSsData;
    goto/16 :goto_11

    .line 1356
    :cond_0
    const-string v3, "exception in handling UNSOL_ON_SS"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 823
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 824
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 825
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1

    .line 826
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    return-void

    .line 830
    :cond_1
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 831
    const-string v3, "Update CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 834
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 835
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 834
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 838
    :cond_2
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 839
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 840
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 841
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_3

    .line 842
    const-string v5, "SuppSvcResponse has failure for CB update."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 845
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 843
    invoke-virtual {v5, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 846
    return-void

    .line 847
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 848
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 850
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v10, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 851
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CB update failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 854
    return-void

    .line 856
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 857
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_11

    .line 860
    :cond_5
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_11

    .line 736
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 737
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 738
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_6

    .line 739
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    return-void

    .line 743
    :cond_6
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    .line 744
    const-string v3, "Query CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 747
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 748
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 747
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 751
    :cond_7
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 752
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 753
    .local v4, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 754
    .local v5, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v5, :cond_8

    .line 755
    const-string v3, "SuppSvcResponse has failure for CB query."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 758
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 756
    invoke-virtual {v3, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 759
    return-void

    .line 760
    :cond_8
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 761
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 763
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v10, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 764
    .local v3, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CB query failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 766
    return-void

    .line 768
    .end local v3    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_9
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v7

    if-ne v7, v3, :cond_a

    .line 769
    const-string v3, "No service status info in response for CB query."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v8, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 775
    :cond_a
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 776
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v3, "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    nop

    .line 778
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v6

    .line 779
    .local v6, "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 780
    .local v8, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 781
    nop

    .line 782
    invoke-virtual {v8}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v9

    .line 783
    .local v9, "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 784
    .local v11, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    new-instance v12, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 786
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 787
    .local v12, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    nop

    .line 788
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 787
    invoke-virtual {v12, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 789
    invoke-virtual {v12}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v11    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    .end local v12    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto :goto_1

    .line 792
    .end local v8    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    .end local v9    # "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    :cond_b
    goto :goto_0

    .line 793
    :cond_c
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 795
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 794
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 793
    invoke-virtual {v7, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 796
    .end local v3    # "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    .end local v6    # "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    goto :goto_2

    .line 797
    :cond_d
    const/4 v3, 0x1

    new-array v6, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 798
    .local v6, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v7, 0x0

    .line 799
    .local v7, "status":I
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v8

    if-ne v8, v3, :cond_e

    .line 800
    const/4 v7, 0x1

    .line 802
    :cond_e
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v3, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 804
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v8

    .line 805
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aput-object v8, v6, v10

    .line 806
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "success callback Query Anonymous CB, status= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v8}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 806
    invoke-static {v0, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    iget-object v9, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v9

    iget v10, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 812
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v4    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v6    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "status":I
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_2
    goto/16 :goto_11

    .line 814
    :cond_f
    const-string v3, "Null response received for Query CB!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1226
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1227
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 1228
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_10

    .line 1229
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    return-void

    .line 1232
    :cond_10
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    .line 1233
    const-string v3, "Query COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1236
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1238
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1236
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1241
    :cond_11
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1244
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1245
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1246
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_12

    .line 1247
    const-string v5, "SuppSvcResponse has failure for COLP query."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1250
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1248
    invoke-virtual {v5, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 1251
    :cond_12
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_13

    .line 1252
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1254
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v10, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1255
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLP query failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1259
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 1261
    :cond_13
    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1262
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1263
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1264
    .local v5, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    .line 1265
    .local v6, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " provision Status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1266
    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    const-string v7, "Success callback called for Query COLP."

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1274
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v6    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_3
    goto/16 :goto_11

    .line 1183
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1184
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1185
    .local v3, "colr":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_4a

    .line 1186
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_14

    .line 1187
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    return-void

    .line 1190
    :cond_14
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_16

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_4a

    .line 1194
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1195
    .restart local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_15

    .line 1196
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1199
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    .line 1200
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1196
    invoke-virtual {v5, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 1202
    :cond_15
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1204
    invoke-virtual {v7, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1202
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1206
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_11

    .line 1207
    :cond_16
    if-eqz v3, :cond_4a

    .line 1208
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1209
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1210
    .local v4, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v5

    .line 1211
    .local v5, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1211
    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Provision Status= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1215
    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1221
    .end local v4    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_11

    .line 1149
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "colr":Lorg/codeaurora/ims/SuppService;
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1150
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1151
    .local v3, "clipStatus":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_4a

    .line 1152
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_17

    .line 1153
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1156
    :cond_17
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_19

    .line 1157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_4a

    .line 1159
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1160
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_18

    .line 1161
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1164
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    .line 1165
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1161
    invoke-virtual {v5, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_5

    .line 1167
    :cond_18
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1169
    invoke-virtual {v7, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1167
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1171
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_11

    .line 1172
    :cond_19
    if-eqz v3, :cond_4a

    .line 1173
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1174
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1175
    .local v4, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1177
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v7

    .line 1176
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1178
    .end local v4    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto/16 :goto_11

    .line 1283
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "clipStatus":Lorg/codeaurora/ims/SuppService;
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1284
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 1285
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1a

    .line 1286
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1287
    return-void

    .line 1289
    :cond_1a
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_23

    .line 1290
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v8, 0x6

    if-ne v3, v8, :cond_1b

    .line 1291
    const-string v3, "Update CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1293
    :cond_1b
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x8

    if-ne v3, v8, :cond_1c

    .line 1294
    const-string v3, "Update CLIP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1296
    :cond_1c
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v8, 0xa

    if-ne v3, v8, :cond_1d

    .line 1297
    const-string v3, "Update COLR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1299
    :cond_1d
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v8, 0xc

    if-ne v3, v8, :cond_1e

    .line 1300
    const-string v3, "Update COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    :cond_1e
    :goto_6
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_21

    .line 1305
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1307
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1308
    .local v7, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v7, :cond_1f

    .line 1309
    const-string v4, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1314
    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1311
    invoke-virtual {v4, v5, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_7

    .line 1315
    :cond_1f
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 1316
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1318
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v10, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1319
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, error: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1323
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_7

    .line 1324
    :cond_20
    invoke-static {v15, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1328
    invoke-virtual {v6, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1326
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1330
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v7    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_11

    :cond_21
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_22

    .line 1331
    const-string v3, "SuppSvcResponse failure with valid userObj"

    invoke-static {v15, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1334
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1332
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1337
    :cond_22
    invoke-static {v15, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1341
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1339
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1344
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_11

    .line 1114
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1115
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 1116
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_24

    .line 1117
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    return-void

    .line 1120
    :cond_24
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    .line 1121
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_25

    .line 1122
    const-string v3, "Query CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    :cond_25
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1126
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1128
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1126
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1131
    :cond_26
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4a

    .line 1132
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1133
    .local v4, "clirResp":[I
    if-eqz v4, :cond_27

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27

    .line 1135
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v3, v4, v10

    .line 1136
    invoke-virtual {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    const/4 v5, 0x1

    aget v5, v4, v5

    .line 1137
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    .line 1138
    .local v3, "info":Landroid/telephony/ims/ImsSsInfo;
    const-string v5, "Calling success callback for Query CLIR."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1141
    .end local v3    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_8

    .line 1142
    :cond_27
    const-string v3, "Received invalid response for Query CLIR."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    .end local v4    # "clirResp":[I
    :goto_8
    goto/16 :goto_11

    .line 866
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 867
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 868
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_28

    .line 869
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    return-void

    .line 872
    :cond_28
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2d

    .line 873
    const-string v3, "Update CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2b

    .line 878
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 880
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 881
    .restart local v7    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v7, :cond_29

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 886
    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 884
    invoke-virtual {v4, v5, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_9

    .line 887
    :cond_29
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2a

    .line 888
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 891
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v10, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 892
    .restart local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed with error = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 896
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_9

    .line 897
    :cond_2a
    invoke-static {v15, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 900
    invoke-virtual {v6, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 899
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 902
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v7    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    goto/16 :goto_11

    .line 903
    :cond_2b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 904
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 905
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 904
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 908
    :cond_2c
    invoke-static {v15, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 911
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 910
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 915
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_11

    .line 1057
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1058
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_4a

    .line 1059
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2e

    .line 1060
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    return-void

    .line 1063
    :cond_2e
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2f

    .line 1064
    const-string v3, "Query CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1066
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1068
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1066
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 1071
    :cond_2f
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_33

    .line 1072
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1074
    .local v3, "cwResponse":[I
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 1076
    .local v5, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v7, 0x0

    .line 1077
    .local v7, "status":I
    aget v8, v3, v10

    if-ne v8, v4, :cond_31

    .line 1078
    aget v6, v3, v4

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_30

    .line 1079
    const/4 v4, 0x1

    .end local v7    # "status":I
    .local v4, "status":I
    goto :goto_a

    .line 1081
    .end local v4    # "status":I
    .restart local v7    # "status":I
    :cond_30
    const/4 v4, 0x0

    .end local v7    # "status":I
    .restart local v4    # "status":I
    goto :goto_a

    .line 1084
    .end local v4    # "status":I
    .restart local v7    # "status":I
    :cond_31
    aget v4, v3, v10

    if-nez v4, :cond_32

    .line 1085
    const/4 v4, 0x0

    .line 1097
    .end local v7    # "status":I
    .restart local v4    # "status":I
    :goto_a
    new-instance v6, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v6, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1098
    .local v6, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v7

    aput-object v7, v5, v10

    .line 1100
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1103
    .end local v3    # "cwResponse":[I
    .end local v4    # "status":I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto/16 :goto_11

    .line 1088
    .restart local v3    # "cwResponse":[I
    .restart local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .restart local v7    # "status":I
    :cond_32
    const-string v4, "No service status received for CallWaitingInfo."

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v8, v1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v9, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1093
    return-void

    .line 1105
    .end local v3    # "cwResponse":[I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "status":I
    :cond_33
    const-string v3, "Null response received for Query CW!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 923
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 924
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_39

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_34

    goto/16 :goto_d

    .line 929
    :cond_34
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_38

    .line 930
    const-string v3, "Update CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 933
    .local v3, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    if-eqz v3, :cond_35

    .line 934
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    goto :goto_b

    :cond_35
    move-object v4, v13

    .line 935
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v13

    :cond_36
    move-object v5, v13

    .line 936
    .local v5, "failCause":Ljava/lang/String;
    if-eqz v5, :cond_37

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_37

    .line 938
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    .line 940
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v10

    invoke-direct {v9, v6, v10, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 938
    invoke-virtual {v7, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_c

    .line 942
    :cond_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update CF failure: ar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " sipError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    iget-object v8, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 945
    invoke-virtual {v8, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v8

    .line 944
    invoke-virtual {v6, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 947
    .end local v3    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "failCause":Ljava/lang/String;
    :goto_c
    goto/16 :goto_11

    .line 948
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 951
    goto/16 :goto_11

    .line 925
    :cond_39
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response: ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    return-void

    .line 954
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 955
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_49

    .line 956
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_3a

    .line 957
    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 958
    return-void

    .line 960
    :cond_3a
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3b

    .line 961
    const-string v3, "Query CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 963
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 964
    invoke-virtual {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 963
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_11

    .line 967
    :cond_3b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_48

    .line 968
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v3, :cond_3c

    .line 969
    const-string v3, "Handle CFUT response"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Lorg/codeaurora/telephony/utils/AsyncResult;Landroid/os/Message;)V

    .line 971
    return-void

    .line 973
    :cond_3c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lorg/codeaurora/telephony/utils/CallForwardInfo;

    .line 975
    .local v3, "cfInfoList":[Lorg/codeaurora/telephony/utils/CallForwardInfo;
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3d

    .line 976
    const-string v4, "CallForwardInfo[] has no elements!"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 980
    return-void

    .line 983
    :cond_3d
    const/4 v4, 0x0

    .line 985
    .local v4, "badCfResponse":Z
    array-length v5, v3

    new-array v5, v5, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 988
    .local v5, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v7, 0x0

    .line 989
    .local v7, "callForwardStatus":I
    const/4 v8, -0x1

    .line 990
    .local v8, "condition":I
    const/4 v9, 0x0

    .line 991
    .local v9, "timeSeconds":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_e
    array-length v12, v3

    if-ge v11, v12, :cond_47

    .line 992
    aget-object v12, v3, v11

    .line 994
    .local v12, "cfInfo":Lorg/codeaurora/telephony/utils/CallForwardInfo;
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3e

    .line 995
    const/4 v7, 0x1

    goto :goto_f

    .line 997
    :cond_3e
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->status:I

    if-nez v14, :cond_3f

    .line 998
    const/4 v7, 0x0

    goto :goto_f

    .line 1001
    :cond_3f
    const/4 v4, 0x1

    .line 1002
    const-string v14, "Bad status in Query CF response."

    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    :goto_f
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    if-nez v14, :cond_40

    .line 1006
    const/4 v8, 0x0

    const/4 v15, 0x5

    goto :goto_10

    .line 1008
    :cond_40
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_41

    .line 1009
    const/4 v8, 0x1

    const/4 v15, 0x5

    goto :goto_10

    .line 1011
    :cond_41
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_42

    .line 1012
    const/4 v8, 0x2

    .line 1014
    iget v9, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->timeSeconds:I

    const/4 v15, 0x5

    goto :goto_10

    .line 1016
    :cond_42
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_43

    .line 1017
    const/4 v8, 0x3

    const/4 v15, 0x5

    goto :goto_10

    .line 1019
    :cond_43
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_44

    .line 1020
    const/4 v8, 0x4

    const/4 v15, 0x5

    goto :goto_10

    .line 1022
    :cond_44
    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_45

    .line 1023
    const/4 v8, 0x5

    goto :goto_10

    .line 1026
    :cond_45
    const/4 v4, 0x1

    .line 1027
    const-string v14, "Bad reason in Query CF response."

    invoke-static {v0, v14}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    :goto_10
    if-eqz v4, :cond_46

    .line 1031
    iget-object v14, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v14

    iget v15, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v16, v2

    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .local v16, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v6, v10, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v14, v15, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1035
    return-void

    .line 1038
    .end local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_46
    move-object/from16 v16, v2

    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    new-instance v2, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v14, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->toa:I

    iget v15, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->serviceClass:I

    new-instance v6, Ljava/lang/String;

    iget-object v10, v12, Lorg/codeaurora/telephony/utils/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v22, v6

    move/from16 v23, v9

    invoke-direct/range {v17 .. v23}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v2, v5, v11

    .line 991
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    const/16 v6, 0x324

    const/4 v10, 0x0

    goto/16 :goto_e

    .end local v12    # "cfInfo":Lorg/codeaurora/telephony/utils/CallForwardInfo;
    .end local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_47
    move-object/from16 v16, v2

    .line 1043
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v11    # "i":I
    .restart local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v6, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1046
    .end local v3    # "cfInfoList":[Lorg/codeaurora/telephony/utils/CallForwardInfo;
    .end local v4    # "badCfResponse":Z
    .end local v5    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v7    # "callForwardStatus":I
    .end local v8    # "condition":I
    .end local v9    # "timeSeconds":I
    goto :goto_11

    .line 1048
    .end local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_48
    move-object/from16 v16, v2

    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const-string v2, "Null response received for Query CF!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v5, 0x0

    const/16 v6, 0x324

    invoke-direct {v4, v6, v5, v13}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_11

    .line 955
    .end local v16    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_49
    move-object/from16 v16, v2

    .line 1361
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_4a
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
