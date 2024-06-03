.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

.field public final synthetic f$1:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->lambda$unregisterSipCallback$3(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    return-void
.end method
