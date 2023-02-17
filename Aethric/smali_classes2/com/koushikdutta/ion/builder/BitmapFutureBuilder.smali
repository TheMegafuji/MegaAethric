.class public interface abstract Lcom/koushikdutta/ion/builder/BitmapFutureBuilder;
.super Ljava/lang/Object;
.source "BitmapFutureBuilder.java"


# virtual methods
.method public abstract asBitmap()Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
.end method

.method public abstract isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
.end method

.method public abstract removeCachedBitmap()V
.end method
