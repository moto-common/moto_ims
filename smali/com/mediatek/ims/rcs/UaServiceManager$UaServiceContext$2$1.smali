.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->messageReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

.field final synthetic val$message:[B


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;[B)V
    .locals 0
    .param p1, "this$2"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    .line 681
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;->this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;->val$message:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;->this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$700(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 685
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;->this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2$1;->val$message:[B

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->messageReceived(I[B)V

    .line 686
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;
    goto :goto_0

    .line 687
    :cond_0
    return-void
.end method
