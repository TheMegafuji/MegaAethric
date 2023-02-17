.class Lcom/koushikdutta/async/AsyncServer$7;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$socket:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$7;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$port:I

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 530
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$host:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 531
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$7;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-static {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->access$600(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 532
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NIO"

    const-string v2, "Datagram error"

    .line 535
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 536
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method
