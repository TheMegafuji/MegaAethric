.class public Lcom/koushikdutta/async/http/body/JSONArrayBody;
.super Ljava/lang/Object;
.source "JSONArrayBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field json:Lorg/json/JSONArray;

.field mBodyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/JSONArrayBody;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->json:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/JSONArrayBody;->get()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/json/JSONArray;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->json:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->json:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->mBodyBytes:[B

    .line 53
    array-length v0, v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONArrayParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/JSONArrayParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;-><init>(Lcom/koushikdutta/async/http/body/JSONArrayBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->mBodyBytes:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
