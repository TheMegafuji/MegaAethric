.class public abstract Lcom/koushikdutta/async/future/TransformFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "TransformFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected error(Ljava/lang/Exception;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/TransformFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->error(Ljava/lang/Exception;)V

    return-void

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/TransformFuture;->transform(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected abstract transform(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
