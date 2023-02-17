.class public Lcom/koushikdutta/async/future/SimpleCancellable;
.super Ljava/lang/Object;
.source "SimpleCancellable.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentCancellable;


# static fields
.field public static final CANCELLED:Lcom/koushikdutta/async/future/Cancellable;

.field public static final COMPLETED:Lcom/koushikdutta/async/future/Cancellable;


# instance fields
.field cancelled:Z

.field complete:Z

.field private parent:Lcom/koushikdutta/async/future/Cancellable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/SimpleCancellable;->COMPLETED:Lcom/koushikdutta/async/future/Cancellable;

    .line 80
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable$2;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable$2;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/SimpleCancellable;->CANCELLED:Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    monitor-exit p0

    return v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 42
    monitor-exit p0

    return v1

    .line 43
    :cond_1
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelled:Z

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 49
    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelCleanup()V

    .line 51
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cleanup()V

    return v1

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected cancelCleanup()V
    .locals 0

    return-void
.end method

.method protected cleanup()V
    .locals 0

    return-void
.end method

.method protected completeCleanup()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    return v0
.end method

.method public reset()Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    .line 89
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelled:Z

    return-object p0
.end method

.method public setComplete()Z
    .locals 2

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->cancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    monitor-exit p0

    return v1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v0, :cond_1

    .line 25
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->completeCleanup()V

    .line 31
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cleanup()V

    return v0

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setParent(Lcom/koushikdutta/async/future/Cancellable;)Z
    .locals 1

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 61
    monitor-exit p0

    return p1

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    const/4 p1, 0x1

    .line 63
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
