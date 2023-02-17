.class Lcom/koushikdutta/async/SelectorWrapper;
.super Ljava/lang/Object;
.source "SelectorWrapper.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public isWaking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private selector:Ljava/nio/channels/Selector;

.field semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->select(J)V

    return-void
.end method

.method public select(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 38
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object p1, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw p1
.end method

.method public selectNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public waitForSelect()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public wakeupOnce()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 65
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->waitForSelect()Z

    .line 78
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->isWaking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
