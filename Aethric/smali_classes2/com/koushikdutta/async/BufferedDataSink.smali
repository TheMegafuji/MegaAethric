.class public Lcom/koushikdutta/async/BufferedDataSink;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field endPending:Z

.field forceBuffering:Z

.field mDataSink:Lcom/koushikdutta/async/DataSink;

.field mMaxBuffer:I

.field final mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

.field mWritable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    const v0, 0x7fffffff

    .line 101
    iput v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setDataSink(Lcom/koushikdutta/async/DataSink;)V

    return-void
.end method

.method public static synthetic lambda$iAvRSua3O0TKZMMlYH7C7b6OX9M(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    return-void
.end method

.method public static synthetic lambda$spH91MKp5SSHVQiAmBEAN2qHENQ(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    return-void
.end method

.method private writePending()V
    .locals 3

    .line 39
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->isEmpty()Z

    move-result v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 49
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    :cond_1
    if-eqz v1, :cond_2

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/-$$Lambda$ErenKeQfJ3gkABvkixTihtYOBRs;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/-$$Lambda$ErenKeQfJ3gkABvkixTihtYOBRs;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    return-void

    :catchall_0
    move-exception v1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public forceBuffering(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-nez p1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    :cond_0
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataSink()Lcom/koushikdutta/async/DataSink;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public getMaxBuffer()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    return v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    return-void
.end method

.method public remaining()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    return v0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataSink(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    .line 35
    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$BufferedDataSink$spH91MKp5SSHVQiAmBEAN2qHENQ;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/-$$Lambda$BufferedDataSink$spH91MKp5SSHVQiAmBEAN2qHENQ;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public setMaxBuffer(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    if-lt v1, v2, :cond_0

    .line 68
    monitor-exit v0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$BufferedDataSink$iAvRSua3O0TKZMMlYH7C7b6OX9M;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/-$$Lambda$BufferedDataSink$iAvRSua3O0TKZMMlYH7C7b6OX9M;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void

    :catchall_0
    move-exception p1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 78
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    .line 82
    :try_start_2
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
