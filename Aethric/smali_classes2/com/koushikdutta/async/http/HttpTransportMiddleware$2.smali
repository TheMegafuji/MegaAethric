.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field statusLine:Ljava/lang/String;

.field final synthetic this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 6

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    goto/16 :goto_2

    .line 92
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto/16 :goto_2

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 97
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v0, 0x0

    .line 101
    aget-object v3, p1, v0

    .line 102
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v4, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 103
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 104
    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    array-length v5, p1

    if-ne v5, v1, :cond_2

    aget-object p1, p1, v2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-interface {v4, p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 105
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 108
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->hasBody()Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->code()I

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;->responseIsEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    .line 121
    :cond_5
    invoke-static {v3}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-static {p1, v1, v2, v0}, Lcom/koushikdutta/async/http/HttpUtil;->getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object p1

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    goto :goto_2

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
