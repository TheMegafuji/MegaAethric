.class public Lcom/koushikdutta/async/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AsyncHttp"

.field private static mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;


# instance fields
.field httpTransportMiddleware:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field final mMiddleware:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field mServer:Lcom/koushikdutta/async/AsyncServer;

.field socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 72
    new-instance p1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 73
    new-instance p1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 74
    new-instance p1, Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->httpTransportMiddleware:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 75
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    new-instance v0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->addEngineConfigurator(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2

    .line 49
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private static copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-void
.end method

.method private execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 8

    .line 179
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v7, Lcom/koushikdutta/async/http/AsyncHttpClient$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {v0, v7}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    :goto_0
    return-void
.end method

.method private executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    const/16 v0, 0xf

    move v6, p2

    if-le v6, v0, :cond_0

    .line 206
    new-instance v2, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    .line 210
    new-instance v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;

    invoke-direct {v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;-><init>()V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 212
    iput-object v8, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "Executing request."

    .line 214
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 216
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 217
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result v0

    if-lez v0, :cond_2

    .line 232
    new-instance v11, Lcom/koushikdutta/async/http/AsyncHttpClient$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    iput-object v11, v9, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    .line 244
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, v9, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    iput-object v0, v9, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    .line 248
    :cond_2
    new-instance v11, Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V

    iput-object v11, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 286
    invoke-static {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 289
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 291
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    invoke-interface {v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 295
    :cond_3
    iget-object v0, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 296
    invoke-interface {v1, v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 298
    iput-object v1, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    .line 299
    invoke-virtual {p3, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-void

    .line 303
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " middlewares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method private executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 9

    .line 313
    new-instance v8, Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;I)V

    .line 465
    new-instance p1, Lcom/koushikdutta/async/http/AsyncHttpClient$5;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->sendHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 474
    new-instance p1, Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    invoke-direct {p1, p0, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 483
    iput-object v8, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 484
    iget-object p1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v8, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 486
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 487
    invoke-interface {p2, p5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-void
.end method

.method public static getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 2

    .line 52
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    sput-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 55
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method private static getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 545
    new-instance v7, Lcom/koushikdutta/async/http/AsyncHttpClient$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$7;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 551
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1, v7}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method private invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 561
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onConnect(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    :cond_0
    return-void
.end method

.method private invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 556
    invoke-interface/range {p1 .. p6}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onProgress(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    :cond_0
    return-void
.end method

.method private invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 535
    invoke-virtual {p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result p2

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p2, p5}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 541
    invoke-interface {p1, p4, p3, p5}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$websocket$2(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 678
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 680
    invoke-interface {p1, p3, p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/koushikdutta/async/http/WebSocketImpl;->finishHandshake(Lcom/koushikdutta/async/http/Headers;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object p2

    if-nez p2, :cond_2

    .line 686
    new-instance p3, Lcom/koushikdutta/async/http/WebSocketHandshakeException;

    const-string v0, "Unable to complete websocket handshake"

    invoke-direct {p3, v0}, Lcom/koushikdutta/async/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-interface {p4}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->close()V

    .line 688
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    .line 692
    :cond_2
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 696
    invoke-interface {p1, p3, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_4
    return-void
.end method

.method private reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 1

    .line 156
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    if-eqz p2, :cond_0

    const-string v0, "Connection error"

    .line 159
    invoke-virtual {p4, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 160
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Exception;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "Connection successful"

    .line 163
    invoke-virtual {p4, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 167
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/callback/HttpConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 173
    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p3, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 174
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->close()V

    :cond_2
    return-void
.end method

.method private static setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 95
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    return-void

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    return-void

    .line 99
    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    .line 102
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->enableProxy(Ljava/lang/String;I)V

    :catch_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-object v0
.end method

.method public execute(Ljava/lang/String;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/callback/RequestCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 646
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 647
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 648
    new-instance v2, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;

    invoke-direct {v2, p0, p3, v1, p2}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 661
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v1
.end method

.method public executeByteBufferList(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    .line 517
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 569
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    invoke-direct {v2, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    new-instance p2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 577
    new-instance v6, Lcom/koushikdutta/async/http/AsyncHttpClient$8;

    invoke-direct {v6, p0, p2, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient$8;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 594
    invoke-virtual {v6, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    const/4 v7, 0x0

    .line 595
    new-instance v8, Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$9;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-direct {p0, p1, v7, p2, v8}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-object v6

    :catch_0
    move-exception p1

    .line 572
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 573
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-object p2
.end method

.method public executeJSONArray(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONArrayParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public executeJSONObject(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    return-object p1
.end method

.method public getMiddleware()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    return-object v0
.end method

.method public getSSLSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method

.method public insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$execute$1$AsyncHttpClient(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 6

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    .line 650
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 653
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 655
    invoke-interface {p3, p5}, Lcom/koushikdutta/async/parser/AsyncParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p3

    .line 656
    new-instance p4, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$L7zP2JN5p1xfm5W8IT1wkB50fR4;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$L7zP2JN5p1xfm5W8IT1wkB50fR4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-interface {p3, p4}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 659
    invoke-virtual {p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$AsyncHttpClient(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 656
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 670
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "[",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 674
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;)V

    .line 675
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 676
    new-instance v0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$2uUM99AWvSEFgNEgirKqG2eSYBQ;

    invoke-direct {v0, p2, p3, p1}, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$2uUM99AWvSEFgNEgirKqG2eSYBQ;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    .line 699
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object p2
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public websocket(Ljava/lang/String;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wss://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
