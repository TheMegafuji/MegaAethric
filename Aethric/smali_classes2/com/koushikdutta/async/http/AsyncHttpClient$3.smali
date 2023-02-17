.class Lcom/koushikdutta/async/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field reported:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

.field final synthetic val$redirectCount:I

.field final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->reported:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 255
    new-instance p1, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 256
    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 257
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "double connect callback"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->reported:Z

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "socket connected"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 265
    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    :cond_2
    return-void

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    :cond_4
    if-eqz p1, :cond_5

    .line 274
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 278
    :cond_5
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput-object p2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 279
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p2, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$300(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V

    return-void
.end method
