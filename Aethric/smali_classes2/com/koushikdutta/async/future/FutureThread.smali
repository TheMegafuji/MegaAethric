.class public Lcom/koushikdutta/async/future/FutureThread;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "FutureThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/future/FutureRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureRunnable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "FutureThread"

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/FutureThread;-><init>(Lcom/koushikdutta/async/future/FutureRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/future/FutureRunnable;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureRunnable<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/koushikdutta/async/future/FutureThread$2;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/future/FutureThread$2;-><init>(Lcom/koushikdutta/async/future/FutureThread;Lcom/koushikdutta/async/future/FutureRunnable;)V

    invoke-direct {v0, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/koushikdutta/async/future/FutureRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/koushikdutta/async/future/FutureRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 14
    new-instance v0, Lcom/koushikdutta/async/future/FutureThread$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/future/FutureThread$1;-><init>(Lcom/koushikdutta/async/future/FutureThread;Lcom/koushikdutta/async/future/FutureRunnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
