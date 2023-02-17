.class public abstract Lcom/koushikdutta/async/future/MultiTransformFuture;
.super Lcom/koushikdutta/async/future/MultiFuture;
.source "MultiTransformFuture.java"

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
        "Lcom/koushikdutta/async/future/MultiFuture<",
        "TT;>;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected error(Ljava/lang/Exception;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiTransformFuture;->setComplete(Ljava/lang/Exception;)Z

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

    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/MultiTransformFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiTransformFuture;->error(Ljava/lang/Exception;)V

    return-void

    .line 14
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/MultiTransformFuture;->transform(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiTransformFuture;->error(Ljava/lang/Exception;)V

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
