.class public Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;
.super Ljava/lang/Object;
.source "UrlEncodedFormBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mBodyBytes:[B

.field private mParameters:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/Multimap;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mParameters:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mParameters:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mParameters:Lcom/koushikdutta/async/http/Multimap;

    return-object p1
.end method

.method private buildData()V
    .locals 6

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mParameters:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Multimap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/NameValuePair;

    .line 35
    invoke-interface {v3}, Lcom/koushikdutta/async/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/16 v2, 0x26

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    .line 41
    invoke-interface {v3}, Lcom/koushikdutta/async/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {v3}, Lcom/koushikdutta/async/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mBodyBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public get()Lcom/koushikdutta/async/http/Multimap;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mParameters:Lcom/koushikdutta/async/http/Multimap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->get()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mBodyBytes:[B

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->buildData()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mBodyBytes:[B

    array-length v0, v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2

    .line 67
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 68
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;-><init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 74
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;-><init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mBodyBytes:[B

    if-nez p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->buildData()V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->mBodyBytes:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
