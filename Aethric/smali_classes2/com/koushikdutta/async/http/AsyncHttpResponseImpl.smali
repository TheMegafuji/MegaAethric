.class abstract Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/http/AsyncHttpResponse;
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;


# instance fields
.field code:I

.field mCompleted:Z

.field private mFirstWrite:Z

.field protected mHeaders:Lcom/koushikdutta/async/http/Headers;

.field private mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field mSink:Lcom/koushikdutta/async/DataSink;

.field private mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field message:Ljava/lang/String;

.field protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 50
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    .line 114
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object p0
.end method

.method private assertContent()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    return-void
.end method

.method private terminate()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "charset"

    .line 202
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->close()V

    .line 107
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->terminate()V

    return-void
.end method

.method public code()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 138
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    return-object p0
.end method

.method public emitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getDataEmitter()Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    return-object v0
.end method

.method public emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    return-object p0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public headers()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected onHeadersReceived()V
    .locals 0

    return-void
.end method

.method protected onHeadersSent()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onRequestCompleted(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected onRequestCompleted(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 97
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->terminate()V

    .line 98
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 99
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 100
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    return-void
.end method

.method setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public sink()Lcom/koushikdutta/async/DataSink;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public sink(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    return-object p0
.end method

.method public socket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
