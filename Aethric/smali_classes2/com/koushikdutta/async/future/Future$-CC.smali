.class public final synthetic Lcom/koushikdutta/async/future/Future$-CC;
.super Ljava/lang/Object;
.source "Future.java"


# direct methods
.method public static $default$executorThread(Lcom/koushikdutta/async/future/Future;Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .param p0, "_this"    # Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 96
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$Future$sjAw5BxdsDoj-4VUQjmBMXaHoAw;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/future/-$$Lambda$Future$sjAw5BxdsDoj-4VUQjmBMXaHoAw;-><init>(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic lambda$executorThread$0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0
    .param p0, "_this"    # Lcom/koushikdutta/async/future/Future;

    .line 96
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method
