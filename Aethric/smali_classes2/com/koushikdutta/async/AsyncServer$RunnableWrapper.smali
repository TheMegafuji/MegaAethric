.class Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableWrapper"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field hasRun:Z

.field runnable:Ljava/lang/Runnable;

.field threadQueue:Lcom/koushikdutta/async/ThreadQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->hasRun:Z

    if-eqz v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->hasRun:Z

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    .line 69
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 70
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    return-void

    :catchall_0
    move-exception v1

    .line 65
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ThreadQueue;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->threadQueue:Lcom/koushikdutta/async/ThreadQueue;

    .line 69
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->handler:Landroid/os/Handler;

    .line 70
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    throw v1

    :catchall_1
    move-exception v0

    .line 60
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
