.class public Lcom/koushikdutta/async/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lcom/koushikdutta/async/http/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 135
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static getBody(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 3

    const-string p0, "Content-Type"

    .line 19
    invoke-virtual {p2, p0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, ";"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 23
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    array-length v0, p1

    :goto_1
    if-ge p2, v0, :cond_5

    aget-object v1, p1, p2

    const-string v2, "application/x-www-form-urlencoded"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    new-instance p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>()V

    return-object p0

    :cond_1
    const-string v2, "application/json"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    new-instance p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    return-object p0

    :cond_2
    const-string v2, "text/plain"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    new-instance p0, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "multipart/"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    new-instance p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    const-string p1, "Content-Length"

    .line 65
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-gez p3, :cond_1

    .line 74
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string p3, "not using chunked encoding, and no content-length found."

    invoke-direct {p2, p3}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    return-object p1

    :cond_1
    if-nez p3, :cond_2

    .line 80
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    return-object p1

    .line 85
    :cond_2
    new-instance p1, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-direct {p1, v2, v3}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;-><init>(J)V

    .line 86
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_1

    :cond_3
    const-string v0, "Transfer-Encoding"

    .line 89
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    .line 91
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 96
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    return-object p1

    :cond_5
    :goto_2
    const-string p1, "Content-Encoding"

    .line 102
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gzip"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 103
    new-instance p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;-><init>()V

    .line 104
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_3
    move-object p0, p1

    goto :goto_4

    .line 107
    :cond_6
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deflate"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 108
    new-instance p1, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>()V

    .line 109
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-object p0
.end method

.method public static isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z
    .locals 1

    const-string v0, "Connection"

    .line 120
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 122
    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "keep-alive"

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z
    .locals 1

    const-string v0, "Connection"

    .line 128
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 130
    invoke-static {p0}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object p0

    sget-object p1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "keep-alive"

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
