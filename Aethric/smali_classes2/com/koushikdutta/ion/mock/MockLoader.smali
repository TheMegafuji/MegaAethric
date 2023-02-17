.class public Lcom/koushikdutta/ion/mock/MockLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "MockLoader.java"


# instance fields
.field requestHandler:Lcom/koushikdutta/ion/mock/MockRequestHandler;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/ion/mock/MockRequestHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/ion/mock/MockLoader;->requestHandler:Lcom/koushikdutta/ion/mock/MockRequestHandler;

    return-void
.end method

.method public static install(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/mock/MockRequestHandler;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/koushikdutta/ion/mock/MockLoader;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/mock/MockLoader;-><init>(Lcom/koushikdutta/ion/mock/MockRequestHandler;)V

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion$Config;->getLoaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 18
    instance-of v1, v1, Lcom/koushikdutta/ion/mock/MockLoader;

    if-nez v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MockLoader already installed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/Ion$Config;->addLoader(ILcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    return-void
.end method


# virtual methods
.method public load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/reflect/Type;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/Ion;",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/ion/mock/MockLoader;->requestHandler:Lcom/koushikdutta/ion/mock/MockRequestHandler;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/mock/MockRequestHandler;->request(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    new-instance p1, Lcom/koushikdutta/ion/mock/MockResponseFuture;

    invoke-direct {p1, p2}, Lcom/koushikdutta/ion/mock/MockResponseFuture;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/mock/MockResponseFuture;->setComplete(Ljava/lang/Object;)Z

    return-object p1

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/koushikdutta/ion/loader/SimpleLoader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/reflect/Type;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method
