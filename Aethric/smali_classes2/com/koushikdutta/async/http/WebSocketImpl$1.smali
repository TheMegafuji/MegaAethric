.class Lcom/koushikdutta/async/http/WebSocketImpl$1;
.super Lcom/koushikdutta/async/http/HybiParser;
.source "WebSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/WebSocketImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/HybiParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    return-void
.end method


# virtual methods
.method protected onDisconnect(ILjava/lang/String;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$200(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method

.method protected onMessage(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$100(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$100(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onMessage([B)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$000(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method protected onPing(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$300(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$300(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$PingCallback;->onPingReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPong(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$400(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$400(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$PongCallback;->onPongReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected sendFrame([B)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
