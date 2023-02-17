.class Lcom/koushikdutta/async/AsyncServer$2;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

.field final synthetic val$holder:Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

.field final synthetic val$host:Ljava/net/InetAddress;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 338
    :try_start_1
    new-instance v2, Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    invoke-direct {v2, v1}, Lcom/koushikdutta/async/ServerSocketChannelWrapper;-><init>(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    invoke-direct {v0, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    iget v4, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 347
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 349
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    new-instance v5, Lcom/koushikdutta/async/AsyncServer$2$1;

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/koushikdutta/async/AsyncServer$2$1;-><init>(Lcom/koushikdutta/async/AsyncServer$2;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/ServerSocketChannelWrapper;Ljava/nio/channels/SelectionKey;)V

    iput-object v5, v4, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;->held:Ljava/lang/Object;

    check-cast v5, Lcom/koushikdutta/async/AsyncServerSocket;

    invoke-interface {v3, v5}, Lcom/koushikdutta/async/callback/ListenCallback;->onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    const-string v3, "NIO"

    const-string v4, "wtf"

    .line 368
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 369
    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 370
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
