.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fullPath:Ljava/lang/String;

.field handled:Z

.field hasContinued:Z

.field final onException:Lcom/koushikdutta/async/callback/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final onFinally:Ljava/lang/Runnable;

.field path:Ljava/lang/String;

.field requestCallback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field requestComplete:Z

.field res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field responseComplete:Z

.field self:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V

    .line 78
    iput-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->self:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

    .line 88
    new-instance p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onFinally:Ljava/lang/Runnable;

    .line 95
    new-instance p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onException:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    return-void
.end method

.method private handleOnCompleted()V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->isSwitchingProtocols(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->self:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->isKeepAlive(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v1, "\\?"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 247
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 248
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    return-object v0
.end method

.method protected onBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v2, "\\?"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    .line 112
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->matcher:Ljava/util/regex/Matcher;

    iput-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->matcher:Ljava/util/regex/Matcher;

    .line 118
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iput-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 120
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    if-nez v2, :cond_1

    return-object v1

    .line 122
    :cond_1
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;->getBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    return-object p1
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->isSwitchingProtocols(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    .line 199
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->onCompleted(Ljava/lang/Exception;)V

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    .line 217
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handled:Z

    if-nez p1, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onRequest()V

    :cond_2
    return-void
.end method

.method protected onHeadersReceived()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 136
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->hasContinued:Z

    if-nez v1, :cond_0

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->pause()V

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .line 179
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handled:Z

    if-eqz v0, :cond_1

    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_4

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onRequest()V

    :cond_4
    return-void
.end method

.method onRequest()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    return-object p1
.end method
