.class final Lcom/koushikdutta/async/http/cache/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxAgeSeconds:I

    .line 37
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxStaleSeconds:I

    .line 38
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->minFreshSeconds:I

    .line 56
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentLength:I

    .line 68
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->uri:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 71
    new-instance p1, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V

    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache-Control"

    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {v2, p1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "Pragma"

    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v1, "no-cache"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 94
    iput-boolean v4, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->noCache:Z

    goto/16 :goto_1

    :cond_1
    const-string v3, "If-None-Match"

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v3, "If-Modified-Since"

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v3, "Authorization"

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iput-boolean v4, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->hasAuthorization:Z

    goto :goto_1

    :cond_4
    const-string v3, "Content-Length"

    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v3, "Transfer-Encoding"

    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 108
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v3, "User-Agent"

    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 110
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, "Host"

    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 112
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, "Connection"

    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 114
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v3, "Accept-Encoding"

    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 116
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v3, "Content-Type"

    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 118
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentType:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v3, "Proxy-Authorization"

    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 120
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    :catch_0
    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->onlyIfCached:Z

    return p1
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cookie"

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->connection:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->transferEncoding:Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    const-string v1, "Accept-Encoding"

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method public setChunked()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->transferEncoding:Ljava/lang/String;

    const-string v1, "Transfer-Encoding"

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->connection:Ljava/lang/String;

    const-string v1, "Connection"

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->connection:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(I)V
    .locals 3

    .line 214
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentLength:I

    const-string v1, "Content-Length"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    :cond_0
    if-eq p1, v2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentLength:I

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentType:Ljava/lang/String;

    const-string v1, "Content-Type"

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->host:Ljava/lang/String;

    const-string v1, "Host"

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->host:Ljava/lang/String;

    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    const-string v1, "If-Modified-Since"

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    const-string v1, "If-None-Match"

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->userAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->userAgent:Ljava/lang/String;

    return-void
.end method
