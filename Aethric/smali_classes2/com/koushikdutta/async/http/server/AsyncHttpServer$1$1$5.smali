.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 206
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method
