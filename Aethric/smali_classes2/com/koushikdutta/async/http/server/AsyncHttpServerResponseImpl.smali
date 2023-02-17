.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;


# instance fields
.field closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field code:I

.field ended:Z

.field headWritten:Z

.field httpVersion:Ljava/lang/String;

.field private mContentLength:J

.field mEnded:Z

.field private mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

.field mSink:Lcom/koushikdutta/async/DataSink;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field writable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    const/16 v0, 0xc8

    .line 365
    iput v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    const-string v0, "HTTP/1.1"

    .line 384
    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->httpVersion:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 56
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    .line 57
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
    .locals 0

    .line 368
    iput p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    return-object p0
.end method

.method public end()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->ended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->ended:Z

    .line 168
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-nez v0, :cond_1

    return-void

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    instance-of v1, v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    if-eqz v1, :cond_3

    .line 180
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    goto :goto_0

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "text/html"

    const-string v1, ""

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writeHead()V

    .line 187
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    :goto_0
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method initFirstWrite()V
    .locals 10

    .line 88
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    .line 94
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/Headers;->removeAll(Ljava/lang/String;)Ljava/util/List;

    :cond_1
    const-string v3, "Chunked"

    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v4, "Connection"

    .line 98
    invoke-virtual {v1, v4}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    .line 100
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v6, "Content-Length"

    invoke-virtual {v4, v6}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 102
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    .line 104
    :cond_4
    iget-wide v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 112
    :goto_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->httpVersion:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    invoke-static {v4}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->getResponseCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "%s %s %s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V

    invoke-static {v2, v0, v3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$initFirstWrite$1$AsyncHttpServerResponseImpl(ZLjava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->report(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 121
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/DataSink;)V

    const/4 p2, 0x0

    .line 122
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->setMaxBuffer(I)V

    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 131
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 132
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 133
    iget-boolean p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->ended:Z

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$BGqtu59IjehNhAxiBiuB5sqfE3Y;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$BGqtu59IjehNhAxiBiuB5sqfE3Y;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public synthetic lambda$null$0$AsyncHttpServerResponseImpl()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$3$AsyncHttpServerResponseImpl(Ljava/lang/Exception;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    return-void
.end method

.method public synthetic lambda$null$5$AsyncHttpServerResponseImpl(Ljava/io/InputStream;Ljava/lang/Exception;)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/Closeable;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 325
    invoke-static {p2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 326
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    return-void
.end method

.method public synthetic lambda$proxy$7$AsyncHttpServerResponseImpl(Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;)V
    .locals 0

    .line 359
    new-instance p2, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 360
    new-instance p2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 361
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void
.end method

.method public synthetic lambda$send$4$AsyncHttpServerResponseImpl(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    .line 225
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 229
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$BMHISDzXEc3eGlpwJuDqTQI4tK4;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$BMHISDzXEc3eGlpwJuDqTQI4tK4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public synthetic lambda$sendBody$2$AsyncHttpServerResponseImpl(Ljava/lang/Exception;)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void
.end method

.method public synthetic lambda$sendStream$6$AsyncHttpServerResponseImpl(Ljava/io/InputStream;)V
    .locals 3

    .line 323
    iget-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    new-instance v2, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void
.end method

.method protected onEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mEnded:Z

    return-void
.end method

.method public proxy(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 3

    .line 351
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->code()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 352
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 353
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 354
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->removeAll(Ljava/lang/String;)Ljava/util/List;

    .line 355
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->addAll(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/Headers;

    .line 357
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 358
    new-instance v0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-static {p1, p0, v0}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public redirect(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12e

    .line 379
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 381
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/html; charset=utf-8"

    .line 257
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;

    invoke-direct {v1, p0, p2, p1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$fG9nfIgJwbLd_1ed0RldVwbRyXo;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 236
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 239
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 218
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public send(Ljava/lang/String;[B)V
    .locals 1

    .line 207
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public send(Lorg/json/JSONArray;)V
    .locals 1

    .line 267
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Lorg/json/JSONObject;)V
    .locals 1

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBody(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {p1}, Lcom/koushikdutta/async/parser/AsyncParser;->getMime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 213
    new-instance v0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$UcjnVjNadnUT3ZK1ebjj281TXMI;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$UcjnVjNadnUT3ZK1ebjj281TXMI;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V

    invoke-interface {p1, p0, p2, v0}, Lcom/koushikdutta/async/parser/AsyncParser;->write(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public sendFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "Content-Type"

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 340
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 341
    new-instance v1, Ljava/io/BufferedInputStream;

    const v2, 0xfa00

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->sendStream(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x194

    .line 344
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 345
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    :goto_0
    return-void
.end method

.method public sendStream(Ljava/io/InputStream;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    sub-long v4, p2, v2

    .line 275
    iget-object v6, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v6

    const-string v7, "Range"

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bytes"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    const-string v12, "="

    .line 277
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 278
    array-length v12, v6

    const/16 v13, 0x1a0

    const/4 v14, 0x2

    if-ne v12, v14, :cond_4

    aget-object v12, v6, v11

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    aget-object v6, v6, v10

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 287
    :try_start_0
    array-length v12, v6

    if-gt v12, v14, :cond_3

    .line 289
    aget-object v12, v6, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 290
    aget-object v12, v6, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_0

    :cond_1
    const-wide/16 v15, 0x0

    .line 291
    :goto_0
    array-length v12, v6

    if-ne v12, v14, :cond_2

    aget-object v12, v6, v10

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 292
    aget-object v4, v6, v10

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    const/16 v6, 0xce

    .line 296
    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v6

    const-string v12, "Content-Range"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "bytes %d-%d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v8, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v12, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    move-wide v2, v15

    goto :goto_2

    .line 288
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/server/MalformedRangeException;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/server/MalformedRangeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void

    .line 280
    :cond_4
    :goto_1
    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    .line 306
    :goto_2
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v2, v8

    if-nez v6, :cond_8

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 308
    iput-wide v4, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    .line 309
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 310
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Accept-Ranges"

    invoke-virtual {v2, v3, v7}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 311
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writeHead()V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    return-void

    .line 316
    :cond_6
    iget-wide v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writeHead()V

    new-array v2, v10, [Ljava/io/Closeable;

    aput-object v1, v2, v11

    .line 318
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    return-void

    .line 322
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v2

    new-instance v3, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4A1TeoWDdLwxSZgJ_jHApgpEeNQ;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4A1TeoWDdLwxSZgJ_jHApgpEeNQ;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    goto :goto_3

    .line 307
    :cond_8
    new-instance v1, Lcom/koushikdutta/async/http/server/StreamSkipException;

    const-string v2, "skip failed to skip requested amount"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/server/StreamSkipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/16 v1, 0x1f4

    .line 330
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    :goto_3
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    .line 413
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->httpVersion:Ljava/lang/String;

    return-void
.end method

.method public setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    goto :goto_0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 431
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->httpVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code:I

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->getResponseCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s %s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->headWritten:Z

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->initFirstWrite()V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    if-nez v0, :cond_2

    return-void

    .line 82
    :cond_2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public writeHead()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->initFirstWrite()V

    return-void
.end method
