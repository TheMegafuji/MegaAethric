.class public Lcom/koushikdutta/async/http/server/UnknownRequestBody;
.super Ljava/lang/Object;
.source "UnknownRequestBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field emitter:Lcom/koushikdutta/async/DataEmitter;

.field length:I

.field private mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->length:I

    .line 18
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->mContentType:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 20
    iput p3, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->length:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->length:I

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->mContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->length:I

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 65
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 66
    new-instance p2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallbacks(Lcom/koushikdutta/async/callback/DataCallback;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 54
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 26
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->resume()V

    :cond_0
    return-void
.end method
