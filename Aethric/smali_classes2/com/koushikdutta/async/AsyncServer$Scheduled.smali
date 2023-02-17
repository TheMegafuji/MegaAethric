.class Lcom/koushikdutta/async/AsyncServer$Scheduled;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Lcom/koushikdutta/async/future/Cancellable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scheduled"
.end annotation


# instance fields
.field cancelled:Z

.field public runnable:Ljava/lang/Runnable;

.field public server:Lcom/koushikdutta/async/AsyncServer;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 223
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    .line 224
    iput-wide p3, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, v1, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->cancelled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-boolean v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->cancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, v1, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
