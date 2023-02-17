.class public Lcom/koushikdutta/async/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# instance fields
.field allocator:Lcom/koushikdutta/async/util/Allocator;

.field closeReported:Z

.field private mChannel:Lcom/koushikdutta/async/ChannelWrapper;

.field mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

.field mEndReported:Z

.field private mKey:Ljava/nio/channels/SelectionKey;

.field mPaused:Z

.field mPendingEndException:Ljava/lang/Exception;

.field private mServer:Lcom/koushikdutta/async/AsyncServer;

.field mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

.field private pending:Lcom/koushikdutta/async/ByteBufferList;

.field socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return-void
.end method

.method private closeInternal()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private handleRemaining(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private spitPending()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method attach(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/koushikdutta/async/DatagramChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/DatagramChannelWrapper;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    .line 44
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    const/16 v0, 0x2000

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/util/Allocator;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    .line 36
    new-instance p2, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p2}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 37
    new-instance p2, Lcom/koushikdutta/async/SocketChannelWrapper;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/SocketChannelWrapper;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    return-void
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    return-void
.end method

.method public end()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->shutdownOutput()V

    return-void
.end method

.method getChannel()Lcom/koushikdutta/async/ChannelWrapper;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    return-object v0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getSocket()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return v0
.end method

.method public onDataWritable()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_1
    return-void
.end method

.method onReadable()I
    .locals 7

    .line 118
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 122
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ChannelWrapper;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v3, -0x1

    .line 138
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    move-wide v2, v3

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    const/4 v4, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v5, v4

    :goto_1
    if-lez v6, :cond_2

    .line 151
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4, v2, v3}, Lcom/koushikdutta/async/util/Allocator;->track(J)V

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 159
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    .line 163
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    :cond_3
    return v5
.end method

.method public pause()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$2;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected reportClose(Ljava/lang/Exception;)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    .line 179
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    :cond_1
    return-void
.end method

.method reportEnd(Ljava/lang/Exception;)V
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    .line 237
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    .line 240
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method reportEndPending(Ljava/lang/Exception;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEnd(Ljava/lang/Exception;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$3;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 319
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 320
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 66
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$1;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ChannelWrapper;->write([Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 89
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->handleRemaining(I)V

    .line 90
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->onDataSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 94
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
