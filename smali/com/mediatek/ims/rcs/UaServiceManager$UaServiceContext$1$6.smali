.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->onReregistered(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

.field final synthetic val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 0
    .param p1, "this$2"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    .line 642
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;->this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;->this$2:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    iget-object v1, v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onCallComposerChanged(I)V

    .line 646
    return-void
.end method
