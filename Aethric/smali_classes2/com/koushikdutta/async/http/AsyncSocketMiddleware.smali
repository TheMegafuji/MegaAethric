.class public Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;,
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    }
.end annotation


# instance fields
.field connectAllAddresses:Z

.field connectionInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field idleTimeoutMs:I

.field protected mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field maxConnectionCount:I

.field port:I

.field proxyAddress:Ljava/net/InetSocketAddress;

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2

    const-string v0, "http"

    const/16 v1, 0x50

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    const v0, 0x493e0

    .line 26
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    .line 112
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 30
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    return-void
.end method

.method private getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 281
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 v0, 0x0

    .line 288
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 291
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private maybeCleanupConnectionInfo(Ljava/lang/String;)V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 243
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 244
    iget-wide v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    iget v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->pop()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 248
    invoke-interface {v2, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 249
    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto :goto_0

    .line 251
    :cond_2
    :goto_1
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 4

    .line 303
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 305
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 309
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 311
    :goto_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 312
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 313
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    check-cast v2, Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 314
    invoke-virtual {v2}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    .line 317
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 260
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result p2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 262
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 265
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 266
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    new-instance v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 267
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p3, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "//"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?proxy="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public disableProxy()V
    .locals 1

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public getConnectAllAddresses()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    return v0
.end method

.method public getMaxConnectionCount()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    return v0
.end method

.method public getSchemePort(Landroid/net/Uri;)I
    .locals 3

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 42
    iget p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    return p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 11

    .line 124
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 125
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v4, v1, :cond_0

    return-object v0

    .line 130
    :cond_0
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "socket-owner"

    invoke-virtual {v1, v2, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v2

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-lt v2, v5, :cond_1

    .line 137
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 138
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit p0

    return-object v0

    .line 142
    :cond_1
    iget v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 144
    :goto_0
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 146
    iget-object v6, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 147
    iget-wide v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    .line 148
    invoke-interface {v6, v0}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 149
    invoke-interface {v6}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v6}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 155
    :cond_3
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 156
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {p1, v0, v6}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 159
    new-instance p1, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    .line 161
    monitor-exit p0

    return-object p1

    .line 163
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;

    invoke-direct {v2, p0, v4, p1}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    .line 195
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    .line 205
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->fail(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    .line 208
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-object v0

    .line 167
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 172
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    iget v6, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    invoke-virtual {v1, v2, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->enableProxy(Ljava/lang/String;I)V

    .line 173
    :cond_7
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 174
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v1

    move v7, v1

    goto :goto_2

    .line 179
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move v7, v4

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_9

    .line 183
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using proxy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 185
    :cond_9
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v8

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v1, p0

    move-object v2, p1

    .line 186
    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    .line 185
    invoke-virtual {v8, v0, v7, p1}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected isKeepAlive(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)Z
    .locals 2

    .line 324
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$getSocket$1$AsyncSocketMiddleware(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;[Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$dP-9C37DkgNohDkiLcO18-eCd_w;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$dP-9C37DkgNohDkiLcO18-eCd_w;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    invoke-static {p3, v0}, Lcom/koushikdutta/async/future/Futures;->loopUntil([Ljava/lang/Object;Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSocket$2$AsyncSocketMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p4, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method public synthetic lambda$getSocket$3$AsyncSocketMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 6

    if-nez p5, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 v4, 0x0

    .line 217
    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p5}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void

    .line 220
    :cond_1
    iget-object p2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string p3, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 222
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p5, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method public synthetic lambda$null$0$AsyncSocketMiddleware(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 198
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s:%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object p2, p2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p2

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/koushikdutta/async/http/-$$Lambda$afPKXbFw3H1ltcUYfrXQ-0TXPB8;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/-$$Lambda$afPKXbFw3H1ltcUYfrXQ-0TXPB8;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p2, v1, p1}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v0
.end method

.method public onResponseComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 3

    .line 329
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 333
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 335
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->exception:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->isKeepAlive(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 343
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 344
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_0
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 347
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 348
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 336
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 337
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 338
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 351
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    throw v0
.end method

.method public setConnectAllAddresses(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    return-void
.end method

.method public setIdleTimeoutMs(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    return-void
.end method

.method public setMaxConnectionCount(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 0

    return-object p5
.end method
