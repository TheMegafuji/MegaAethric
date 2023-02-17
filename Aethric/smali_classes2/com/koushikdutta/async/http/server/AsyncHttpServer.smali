.class public Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;
    }
.end annotation


# static fields
.field private static mCodes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/AsyncServerSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 323
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Accepted"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad Request"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Server Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getResponseCodeDescription(I)Ljava/lang/String;
    .locals 1

    .line 338
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    :cond_0
    return-object p0
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getListenCallback()Lcom/koushikdutta/async/callback/ListenCallback;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    return-object v0
.end method

.method protected isKeepAlive(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    .line 63
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHttpVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result p1

    return p1
.end method

.method protected isSwitchingProtocols(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 1

    .line 71
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code()I

    move-result p1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public listen(I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 1

    .line 281
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenSecure(ILjavax/net/ssl/SSLContext;)V
    .locals 2

    .line 285
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AsyncHttpServer"

    const-string v0, "request callback raised uncaught exception. Catching versus crashing process"

    .line 55
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x1f4

    .line 56
    invoke-interface {p3, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 57
    invoke-interface {p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onResponseCompleted(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    return-void
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 2

    .line 67
    new-instance v0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setErrorCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServerSocket;

    .line 36
    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method
