.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field statusLine:Ljava/lang/String;

.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->statusLine:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->statusLine:Ljava/lang/String;

    const-string v0, "HTTP/1.\\d 2\\d\\d .*"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 133
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non 2xx status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->statusLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 139
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 140
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$uri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget v4, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$port:I

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->tryHandshake(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
