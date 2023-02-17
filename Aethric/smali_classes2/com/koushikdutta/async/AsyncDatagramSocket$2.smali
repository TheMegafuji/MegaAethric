.class Lcom/koushikdutta/async/AsyncDatagramSocket$2;
.super Ljava/lang/Object;
.source "AsyncDatagramSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncDatagramSocket;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic val$address:Ljava/net/InetSocketAddress;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncDatagramSocket;Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->this$0:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->val$address:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->this$0:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->val$address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncDatagramSocket$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/AsyncDatagramSocket;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    return-void
.end method
