.class public Lcom/koushikdutta/async/future/MultiFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "MultiFuture.java"


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


# instance fields
.field private final internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private internalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 26
    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/future/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Lcom/koushikdutta/async/future/Future;)V

    .line 26
    new-instance p1, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Exception;)V

    .line 26
    new-instance p1, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    .line 26
    new-instance p1, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/-$$Lambda$MultiFuture$MoAPUH9y-J3Iw3kiCP5KQFza2DM;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MultiFuture(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallbacks:Ljava/util/ArrayList;

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 36
    invoke-interface {v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallbacks:Ljava/util/ArrayList;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p2, p0, Lcom/koushikdutta/async/future/MultiFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
