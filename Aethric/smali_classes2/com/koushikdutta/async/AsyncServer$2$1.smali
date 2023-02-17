.class Lcom/koushikdutta/async/AsyncServer$2$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncServerSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/AsyncServer$2;

.field final synthetic val$key:Ljava/nio/channels/SelectionKey;

.field final synthetic val$server:Ljava/nio/channels/ServerSocketChannel;

.field final synthetic val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$2;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/ServerSocketChannelWrapper;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->this$1:Lcom/koushikdutta/async/AsyncServer$2;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$server:Ljava/nio/channels/ServerSocketChannel;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$key:Ljava/nio/channels/SelectionKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalPort()I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 358
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
