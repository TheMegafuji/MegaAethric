.class Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/loader/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resource"
.end annotation


# instance fields
.field id:I

.field res:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/ion/loader/ResourceLoader$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;-><init>()V

    return-void
.end method
