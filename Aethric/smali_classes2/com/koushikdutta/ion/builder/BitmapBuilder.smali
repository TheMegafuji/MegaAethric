.class public interface abstract Lcom/koushikdutta/ion/builder/BitmapBuilder;
.super Ljava/lang/Object;
.source "BitmapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/koushikdutta/ion/builder/BitmapBuilder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract centerCrop()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract centerInside()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract fitCenter()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract fitXY()Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract postProcess(Lcom/koushikdutta/ion/bitmap/PostProcess;)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract resize(II)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation
.end method

.method public abstract resizeHeight(I)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract resizeWidth(I)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract smartSize(Z)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract transform(Lcom/koushikdutta/ion/bitmap/Transform;)Lcom/koushikdutta/ion/builder/BitmapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ")TB;"
        }
    .end annotation
.end method
