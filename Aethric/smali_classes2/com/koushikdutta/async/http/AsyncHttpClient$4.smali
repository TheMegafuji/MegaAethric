.class Lcom/koushikdutta/async/http/AsyncHttpClient$4;
.super Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

.field final synthetic val$redirectCount:I

.field final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput p7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$redirectCount:I

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method


# virtual methods
.method public detachSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Detaching socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 456
    :cond_0
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 457
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 458
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 459
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    return-object v0
.end method

.method public synthetic lambda$setDataEmitter$0$AsyncHttpClient$4(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$700(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method public synthetic lambda$setDataEmitter$1$AsyncHttpClient$4(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$700(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method protected onHeadersReceived()V
    .locals 3

    .line 403
    invoke-super {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onHeadersReceived()V

    .line 404
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 415
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRequestCompleted(Ljava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "request completed"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    .line 327
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$400(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    .line 330
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 331
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onRequestSent(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    instance-of v0, p1, Lcom/koushikdutta/async/AsyncSSLException;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 430
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/AsyncSSLException;

    .line 431
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->onHandshakeException(Lcom/koushikdutta/async/AsyncSSLException;)V

    .line 432
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 438
    :cond_3
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    .line 439
    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 440
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 441
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->exception:Ljava/lang/Exception;

    .line 445
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 446
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onResponseComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 8

    .line 337
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 338
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 339
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 344
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 345
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onResponseReady(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 347
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    iput-wide v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 348
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    .line 349
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    iput-object p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 350
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    iput-object p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 351
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 352
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$500(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 354
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Response intercepted by middleware"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    const-string p1, "Request initiated by middleware intercept by middleware"

    .line 355
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$redirectCount:I

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    new-instance v0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$4$Fj7l6kEVeKUQMJJxh-P453_GE30;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$4$Fj7l6kEVeKUQMJJxh-P453_GE30;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 358
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 364
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->code()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x133

    if-ne v0, v1, :cond_6

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getFollowRedirect()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Location"

    .line 366
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 371
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_4
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "GET"

    .line 379
    :goto_1
    new-instance v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v4, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v0, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    iput-wide v0, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 381
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    .line 382
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    iput-object p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    iput-object p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 384
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget p1, p1, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    iput p1, v4, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 385
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$500(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 386
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "User-Agent"

    invoke-static {p1, v4, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$600(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Range"

    invoke-static {p1, v4, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$600(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Redirecting"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    const-string p1, "Redirected"

    .line 389
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$redirectCount:I

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    new-instance v0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$4$u6KgKqe27VkX26cJSYA77cFpDhc;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$4$u6KgKqe27VkX26cJSYA77cFpDhc;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 392
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 396
    :cond_6
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final (post cache response) headers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method
