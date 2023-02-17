.class Lcom/koushikdutta/async/AsyncServer$3;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$address:Ljava/net/InetSocketAddress;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

.field final synthetic val$createCallback:Lcom/koushikdutta/async/callback/SocketCreateCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/callback/SocketCreateCallback;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$3;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$createCallback:Lcom/koushikdutta/async/callback/SocketCreateCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$address:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, v2, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->socket:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 412
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v2}, Lcom/koushikdutta/async/AsyncServer;->access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v3, v2, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$createCallback:Lcom/koushikdutta/async/callback/SocketCreateCallback;

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$createCallback:Lcom/koushikdutta/async/callback/SocketCreateCallback;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/koushikdutta/async/callback/SocketCreateCallback;->onSocketCreated(I)V

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    .line 421
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 422
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$3;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    :goto_1
    return-void
.end method
