.class public abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

.field private mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field private mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field method:Ljava/lang/String;

.field private state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 23
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->state:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 64
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/Exception;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getQuery()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->get()Ljava/lang/Object;

    move-result-object v0

    .line 173
    instance-of v1, v0, Lcom/koushikdutta/async/http/Multimap;

    if-eqz v1, :cond_1

    .line 174
    check-cast v0, Lcom/koushikdutta/async/http/Multimap;

    .line 175
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getState()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->state:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getState()Ljava/util/Map;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->getState()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method protected onBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method protected abstract onHeadersReceived()V
.end method

.method protected onNotHttp()V
    .locals 2

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not http!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 106
    new-instance p1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {p1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 109
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
