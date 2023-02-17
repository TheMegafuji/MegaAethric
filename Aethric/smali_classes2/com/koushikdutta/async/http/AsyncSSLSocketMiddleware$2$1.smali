.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {p1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 147
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
