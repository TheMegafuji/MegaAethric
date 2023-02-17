.class Lcom/koushikdutta/async/ThreadQueue;
.super Ljava/util/LinkedList;
.source "ThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final mThreadQueues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lcom/koushikdutta/async/ThreadQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field queueSemaphore:Ljava/util/concurrent/Semaphore;

.field waiter:Lcom/koushikdutta/async/AsyncSemaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;
    .locals 3

    .line 12
    sget-object v0, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/ThreadQueue;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/koushikdutta/async/ThreadQueue;

    invoke-direct {v1}, Lcom/koushikdutta/async/ThreadQueue;-><init>()V

    .line 16
    sget-object v2, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static release(Lcom/koushikdutta/async/AsyncSemaphore;)V
    .locals 4

    .line 24
    sget-object v0, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/ThreadQueue;->mThreadQueues:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/ThreadQueue;

    .line 26
    iget-object v3, v2, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-ne v3, p0, :cond_0

    .line 27
    iget-object v2, v2, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 29
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ThreadQueue;->add(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Runnable;)Z
    .locals 0

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/koushikdutta/async/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Runnable;
    .locals 1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ThreadQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    monitor-exit p0

    return-object v0

    .line 54
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
