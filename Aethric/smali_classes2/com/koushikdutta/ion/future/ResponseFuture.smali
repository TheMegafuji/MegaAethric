.class public interface abstract Lcom/koushikdutta/ion/future/ResponseFuture;
.super Ljava/lang/Object;
.source "ResponseFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/Future<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract withResponse()Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/ion/Response<",
            "TT;>;>;"
        }
    .end annotation
.end method
