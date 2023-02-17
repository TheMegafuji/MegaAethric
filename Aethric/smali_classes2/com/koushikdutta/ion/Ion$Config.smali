.class public Lcom/koushikdutta/ion/Ion$Config;
.super Ljava/lang/Object;
.source "Ion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

.field final synthetic this$0:Lcom/koushikdutta/ion/Ion;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance p1, Lcom/koushikdutta/ion/Ion$Config$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/Ion$Config$1;-><init>(Lcom/koushikdutta/ion/Ion$Config;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-void
.end method


# virtual methods
.method public addLoader(ILcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->conscryptMiddleware:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialize()V

    .line 518
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    return-object p1
.end method

.method public disableProxy()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->disableProxy()V

    return-void
.end method

.method public disableSecureProxy()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->disableProxy()V

    return-void
.end method

.method public getAsyncHttpRequestFactory()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-object v0
.end method

.method public getContentLoader()Lcom/koushikdutta/ion/loader/ContentLoader;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->contentLoader:Lcom/koushikdutta/ion/loader/ContentLoader;

    return-object v0
.end method

.method public getFileLoader()Lcom/koushikdutta/ion/loader/FileLoader;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->fileLoader:Lcom/koushikdutta/ion/loader/FileLoader;

    return-object v0
.end method

.method public declared-synchronized getGson()Lcom/google/gson/Gson;
    .locals 2

    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/Gson;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/Gson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpLoader()Lcom/koushikdutta/ion/loader/HttpLoader;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpLoader:Lcom/koushikdutta/ion/loader/HttpLoader;

    return-object v0
.end method

.method public getLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/ion/Loader;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageIconLoader()Lcom/koushikdutta/ion/loader/PackageIconLoader;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->packageIconLoader:Lcom/koushikdutta/ion/loader/PackageIconLoader;

    return-object v0
.end method

.method public getResponseCache()Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    return-object v0
.end method

.method public getVideoLoader()Lcom/koushikdutta/ion/loader/VideoLoader;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->videoLoader:Lcom/koushikdutta/ion/loader/VideoLoader;

    return-object v0
.end method

.method public insertLoader(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public proxy(Ljava/lang/String;I)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->enableProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public proxySecure(Ljava/lang/String;I)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->enableProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setAsyncHttpRequestFactory(Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->asyncHttpRequestFactory:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-object p0
.end method

.method public setGson(Lcom/google/gson/Gson;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->logtag:Ljava/lang/String;

    .line 541
    iget-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput p2, p1, Lcom/koushikdutta/ion/Ion;->logLevel:I

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/Ion$Config;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iput-object p1, v0, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public userAgent()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    return-object v0
.end method
