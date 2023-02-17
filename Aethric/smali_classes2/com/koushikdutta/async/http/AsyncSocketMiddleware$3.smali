.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 295
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 296
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 297
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method
