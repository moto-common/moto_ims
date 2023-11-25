.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
