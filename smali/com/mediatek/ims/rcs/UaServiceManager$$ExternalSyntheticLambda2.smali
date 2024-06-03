.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field public final synthetic f$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

.field public final synthetic f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iput-object p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iput p4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->lambda$registerStateCallback$0$com-mediatek-ims-rcs-UaServiceManager(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method
