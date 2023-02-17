.class public Lcom/koushikdutta/async/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final HEADER_ACCEPT_ALL:Ljava/lang/String; = "*/*"


# instance fields
.field LOGTAG:Ljava/lang/String;

.field executionTime:J

.field logLevel:I

.field private mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field private mFollowRedirect:Z

.field private mMethod:Ljava/lang/String;

.field private mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field mTimeout:I

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field private requestLineProtocol:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1"

    .line 58
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->requestLineProtocol:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    const/16 v0, 0x7530

    .line 143
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 100
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    if-nez p3, :cond_0

    .line 103
    new-instance p2, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 105
    :cond_0
    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    :goto_0
    if-nez p3, :cond_1

    .line 107
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setDefaultHeaders(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->requestLineProtocol:Ljava/lang/String;

    return-object p0
.end method

.method protected static getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    const-string v0, "http.agent"

    .line 54
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 206
    iget-wide v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    sub-long v2, v0, v2

    .line 210
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "(%d ms) %s: %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setDefaultHeaders(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Host"

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 91
    :cond_1
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Connection"

    const-string v0, "keep-alive"

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Accept"

    const-string v0, "*/*"

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public disableProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    return-void
.end method

.method public getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public getFollowRedirect()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    return v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    return v0
.end method

.method public getRequestLine()Lcom/koushikdutta/async/http/RequestLine;
    .locals 1

    .line 13
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public getRequestLineProtocol()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->requestLineProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    return-void

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    return-void

    .line 217
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    return-void

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    return-void

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandshakeException(Lcom/koushikdutta/async/AsyncSSLException;)V
    .locals 0

    return-void
.end method

.method public setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-void
.end method

.method public setFollowRedirect(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method public setLogging(Ljava/lang/String;I)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 192
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    return-void
.end method

.method public setMethod(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 2

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    if-ne v0, v1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object p0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t change method on a subclass of AsyncHttpRequest"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestLineProtocol(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->requestLineProtocol:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0

    .line 149
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
