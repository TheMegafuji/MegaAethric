.class public Lcom/koushikdutta/async/future/SimpleFuture;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;,
        Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleCancellable;",
        "Lcom/koushikdutta/async/future/DependentFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private silent:Z

.field private waiter:Lcom/koushikdutta/async/AsyncSemaphore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

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

    .line 32
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelInternal(Z)Z
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 48
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->releaseWaiterLocked()V

    .line 49
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleInternalCompleteLocked()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object v0

    .line 50
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getResultOrThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 145
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;-><init>()V

    .line 148
    :cond_2
    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 149
    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    .line 150
    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->loop()V

    :cond_3
    return-void
.end method

.method private handleInternalCompleteLocked()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-object v0
.end method

.method static synthetic lambda$done$3(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 266
    :try_start_0
    invoke-interface {p0, p2, p3}, Lcom/koushikdutta/async/future/DoneCallback;->done(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 275
    :cond_0
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method static synthetic lambda$fail$7(Lcom/koushikdutta/async/future/FailCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/FailCallback;->fail(Ljava/lang/Exception;)V

    .line 333
    new-instance p0, Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic lambda$failConvert$9(Lcom/koushikdutta/async/future/FailConvertCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/FailConvertCallback;->fail(Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$failRecover$8(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 343
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void

    .line 348
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/future/FailRecoverCallback;->fail(Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 351
    invoke-direct {p0, p1, p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method static synthetic lambda$setCallback$0(Lcom/koushikdutta/async/future/FutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    .line 216
    invoke-interface {p0, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$success$4(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 287
    :try_start_0
    invoke-interface {p0, p3}, Lcom/koushikdutta/async/future/SuccessCallback;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 296
    :cond_0
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method static synthetic lambda$then$5(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 307
    invoke-direct {p0, p2, v0, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void

    .line 312
    :cond_0
    :try_start_0
    invoke-interface {p1, p3}, Lcom/koushikdutta/async/future/ThenFutureCallback;->then(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    return-void

    :catch_0
    move-exception p1

    .line 315
    invoke-direct {p0, p1, v0, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method static synthetic lambda$thenConvert$6(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/ThenCallback;->then(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private setComplete(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 222
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 223
    instance-of v1, p1, Lcom/koushikdutta/async/future/SimpleFuture;

    if-eqz v1, :cond_0

    .line 224
    check-cast p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$t-A0Ecn227DvKWuOCPY_r6y_gH4;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p1, p2, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$tuJGzqGHLtBdo1SnY68uflGhvVc;

    invoke-direct {p2, p0, v0}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$tuJGzqGHLtBdo1SnY68uflGhvVc;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    :goto_0
    return-object v0
.end method

.method private setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            ")Z"
        }
    .end annotation

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 189
    monitor-exit p0

    return p1

    .line 190
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    .line 191
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 192
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->releaseWaiterLocked()V

    .line 193
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleInternalCompleteLocked()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object p1

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0, p3, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 194
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancelInternal(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancel()Z

    move-result p1

    return p1
.end method

.method public cancelSilently()Z
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancelInternal(Z)Z

    move-result v0

    return v0
.end method

.method public done(Lcom/koushikdutta/async/future/DoneCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/DoneCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 262
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 263
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$7Sy7Cf2LbMnB4ohHE_MP4vO_W2c;-><init>(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    return-object v0
.end method

.method public synthetic executorThread(Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Future$-CC;->$default$executorThread(Lcom/koushikdutta/async/future/Future;Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public fail(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$PD3hHJKEwTr2R6yxoZOBX2t0wf4;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$PD3hHJKEwTr2R6yxoZOBX2t0wf4;-><init>(Lcom/koushikdutta/async/future/FailCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->failRecover(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public failConvert(Lcom/koushikdutta/async/future/FailConvertCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailConvertCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$ZNkXIrqYFVK_O9xAhFgOVLLIhqc;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$ZNkXIrqYFVK_O9xAhFgOVLLIhqc;-><init>(Lcom/koushikdutta/async/future/FailConvertCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->failRecover(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public failRecover(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailRecoverCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 340
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 341
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$6-XL_x1kUrQ7e0l5LPC88cYk57k;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->acquire()V

    .line 74
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->ensureWaiterLocked()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSemaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 88
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCallback()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-object v0
.end method

.method public synthetic lambda$setComplete$1$SimpleFuture(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    .line 226
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method public synthetic lambda$setComplete$2$SimpleFuture(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p2, p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method releaseWaiterLocked()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->release()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_0
    return-void
.end method

.method public bridge synthetic reset()Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->reset()Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 374
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->reset()Lcom/koushikdutta/async/future/Cancellable;

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    .line 377
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    .line 378
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 379
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    return-object p0
.end method

.method public setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 214
    invoke-virtual {p0, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$BuzzLlf7pXQwuleM2BzFLBy8G5Q;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$BuzzLlf7pXQwuleM2BzFLBy8G5Q;-><init>(Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    :goto_0
    return-void
.end method

.method setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 203
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->handleInternalCompleteLocked()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object p2

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public setComplete()Z
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setComplete(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public setComplete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public setCompleteException(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public setCompleteFuture(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public setCompleteValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public setParent(Lcom/koushikdutta/async/future/Cancellable;)Z
    .locals 0

    .line 366
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    move-result p1

    return p1
.end method

.method public success(Lcom/koushikdutta/async/future/SuccessCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SuccessCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 283
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 284
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$fN6HOFsExsvfhGgBP_3sJhN4hlY;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$fN6HOFsExsvfhGgBP_3sJhN4hlY;-><init>(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public then(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 304
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 305
    new-instance v1, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$W4fj-IFmRHaG51NKnlRZgZZAQpQ;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$W4fj-IFmRHaG51NKnlRZgZZAQpQ;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$zK4OW7srqirq7ND35mWvVHxMwhk;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/-$$Lambda$SimpleFuture$zK4OW7srqirq7ND35mWvVHxMwhk;-><init>(Lcom/koushikdutta/async/future/ThenCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->then(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public tryGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public tryGetException()Ljava/lang/Exception;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    return-object v0
.end method
