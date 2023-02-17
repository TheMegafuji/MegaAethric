.class Lcom/koushikdutta/ion/TransformBitmap$PostProcessNullTransform;
.super Ljava/lang/Object;
.source "TransformBitmap.java"

# interfaces
.implements Lcom/koushikdutta/ion/bitmap/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/TransformBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostProcessNullTransform"
.end annotation


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/koushikdutta/ion/TransformBitmap$PostProcessNullTransform;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$PostProcessNullTransform;->key:Ljava/lang/String;

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method
