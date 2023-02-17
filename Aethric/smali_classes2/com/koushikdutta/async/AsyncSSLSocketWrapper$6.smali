.class Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final allocator:Lcom/koushikdutta/async/util/Allocator;

.field final buffered:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p1}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/util/Allocator;->setMinAlloc(I)Lcom/koushikdutta/async/util/Allocator;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 268
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7

    .line 272
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-boolean p1, p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mUnwrapping:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mUnwrapping:Z

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 279
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 280
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 284
    :cond_1
    sget-object p2, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    .line 286
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 287
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 289
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 290
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v2, v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    .line 295
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v3}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 296
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v4, v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, p2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v6, v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5, v6, v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->addToPending(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V

    .line 298
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->allocator:Lcom/koushikdutta/async/util/Allocator;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v5, v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/koushikdutta/async/util/Allocator;->track(J)V

    .line 300
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v6, -0x1

    if-ne v3, v5, :cond_4

    .line 301
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->allocator:Lcom/koushikdutta/async/util/Allocator;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v3}, Lcom/koushikdutta/async/util/Allocator;->getMinAlloc()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/util/Allocator;->setMinAlloc(I)Lcom/koushikdutta/async/util/Allocator;

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    .line 304
    :cond_4
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v5, :cond_6

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 306
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result p2

    if-gt p2, v1, :cond_5

    goto :goto_2

    .line 311
    :cond_5
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 313
    sget-object p2, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 315
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->access$000(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 316
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->buffered:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 322
    :goto_2
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->onDataAvailable()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-static {v0, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->access$100(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :goto_3
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean p1, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mUnwrapping:Z

    return-void

    :goto_4
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean p1, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mUnwrapping:Z

    throw p2
.end method
