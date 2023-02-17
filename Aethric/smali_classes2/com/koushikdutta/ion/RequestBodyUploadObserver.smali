.class Lcom/koushikdutta/ion/RequestBodyUploadObserver;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# instance fields
.field body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field callback:Lcom/koushikdutta/ion/ProgressCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;Lcom/koushikdutta/ion/ProgressCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 22
    iput-object p2, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->callback:Lcom/koushikdutta/ion/ProgressCallback;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->length()I

    move-result v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v0

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->length()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    new-instance v2, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;-><init>(Lcom/koushikdutta/ion/RequestBodyUploadObserver;Lcom/koushikdutta/async/DataSink;I)V

    invoke-interface {v1, p1, v2, p3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
