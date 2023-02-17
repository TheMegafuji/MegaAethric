.class public interface abstract Lcom/koushikdutta/ion/future/ImageViewFuture;
.super Ljava/lang/Object;
.source "ImageViewFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/Future<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract withBitmapInfo()Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/ion/ImageViewBitmapInfo;",
            ">;"
        }
    .end annotation
.end method
