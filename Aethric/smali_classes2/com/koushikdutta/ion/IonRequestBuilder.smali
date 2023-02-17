.class Lcom/koushikdutta/ion/IonRequestBuilder;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/builder/Builders$Any$B;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$F;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$M;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$U;
.implements Lcom/koushikdutta/ion/builder/LoadBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;,
        Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$F;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$M;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$U;",
        "Lcom/koushikdutta/ion/builder/LoadBuilder<",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        ">;"
    }
.end annotation


# instance fields
.field body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field bodyParameters:Lcom/koushikdutta/async/http/Multimap;

.field contextReference:Lcom/koushikdutta/ion/IonContext;

.field followRedirect:Z

.field groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field headers:Lcom/koushikdutta/async/http/Headers;

.field headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

.field ion:Lcom/koushikdutta/ion/Ion;

.field loadRequestCallback:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

.field logLevel:I

.field logTag:Ljava/lang/String;

.field method:Ljava/lang/String;

.field methodWasSet:Z

.field multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field noCache:Z

.field progress:Lcom/koushikdutta/ion/ProgressCallback;

.field progressBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field progressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field progressHandler:Lcom/koushikdutta/ion/ProgressCallback;

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field query:Lcom/koushikdutta/async/http/Multimap;

.field timeoutMilliseconds:I

.field uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

.field uploadProgressBar:Landroid/widget/ProgressBar;

.field uploadProgressDialog:Landroid/app/ProgressDialog;

.field uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonContext;Lcom/koushikdutta/ion/Ion;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    const-string v0, "GET"

    .line 86
    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 193
    iput v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    .line 90
    invoke-interface {p1}, Lcom/koushikdutta/ion/IonContext;->isAlive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building request with dead context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ion"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 94
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->postExecute(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private getHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/Headers;

    .line 128
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setDefaultHeaders(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method private getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareURI()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 314
    :cond_0
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v0

    .line 315
    iput-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 317
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method private getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ")V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$2;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/RequestBodyUploadObserver;-><init>(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;Lcom/koushikdutta/ion/ProgressCallback;)V

    .line 350
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 353
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->resolveAndLoadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-void
.end method

.method private loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method private postExecute(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion$Config;->getAsyncHttpRequestFactory()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v0, p1, v1, v2}, Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;->createAsyncHttpRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object p1

    .line 290
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setFollowRedirect(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 291
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 292
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->logtag:Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget v1, v1, Lcom/koushikdutta/ion/Ion;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setLogging(Ljava/lang/String;I)V

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setLogging(Ljava/lang/String;I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyHost:Ljava/lang/String;

    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyPort:I

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->enableProxy(Ljava/lang/String;I)V

    .line 296
    iget v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setTimeout(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "preparing request"

    .line 297
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    return-object p1
.end method

.method private prepareURI()Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->methodWasSet:Z

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 209
    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->method:Ljava/lang/String;

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->body:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-eqz p2, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->addAll(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 853
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 856
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 857
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs addMultipartParts([Lcom/koushikdutta/async/http/body/Part;)Lcom/koushikdutta/ion/builder/Builders$Any$M;
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 866
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 869
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 870
    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addMultipartParts([Lcom/koushikdutta/async/http/body/Part;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addMultipartParts([Lcom/koushikdutta/async/http/body/Part;)Lcom/koushikdutta/ion/builder/Builders$Any$M;

    move-result-object p1

    return-object p1
.end method

.method public addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->query:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public as(Lcom/google/gson/reflect/TypeToken;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 937
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public as(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 758
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 932
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/Gson;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asBitmap()Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 918
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->asBitmap()Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public asByteArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "[B>;"
        }
    .end annotation

    .line 722
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$7;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 903
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->asCachedBitmap()Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public asDataEmitter()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/koushikdutta/async/DataEmitter;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Lcom/koushikdutta/ion/DataEmitterParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/DataEmitterParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asDocument()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 1018
    new-instance v0, Lcom/koushikdutta/async/parser/DocumentParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/DocumentParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/koushikdutta/ion/InputStreamParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/InputStreamParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 697
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asJsonObject()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 692
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public asString()Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 712
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method public asString(Ljava/nio/charset/Charset;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method public basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 4

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "%s:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/DataSink;",
            "ZTT;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/DataSink;",
            "ZTT;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation

    .line 616
    new-instance v6, Lcom/koushikdutta/ion/IonRequestBuilder$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/IonRequestBuilder$5;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/DataSink;Ljava/lang/Object;)V

    .line 636
    invoke-direct {p0, v6}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-object v6
.end method

.method execute(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    return-object p1
.end method

.method execute(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TT;>;"
        }
    .end annotation

    .line 646
    invoke-interface {p1}, Lcom/koushikdutta/async/parser/AsyncParser;->getMime()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Accept"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "*/*"

    if-ne v1, v3, :cond_0

    .line 650
    invoke-virtual {p0, v2, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareURI()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 657
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->prepareRequest(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v1

    .line 658
    invoke-interface {p1}, Lcom/koushikdutta/async/parser/AsyncParser;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 659
    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v3, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/koushikdutta/ion/Loader;

    .line 660
    iget-object v5, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v4, v5, v1, v2}, Lcom/koushikdutta/ion/Loader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/reflect/Type;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 666
    :cond_2
    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/parser/AsyncParser;)V

    if-nez v0, :cond_3

    .line 681
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Invalid URI"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-object v2

    .line 685
    :cond_3
    iput-object v1, v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 686
    invoke-direct {p0, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    return-object v2
.end method

.method public followRedirect(Z)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect:Z

    return-object p0
.end method

.method public bridge synthetic followRedirect(Z)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->followRedirect(Z)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public group(Ljava/lang/Object;)Lcom/koushikdutta/ion/builder/FutureBuilder;
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->groups:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;
    .locals 1

    .line 892
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->withImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->intoImageView(Landroid/widget/ImageView;)Lcom/koushikdutta/ion/future/ImageViewFuture;

    move-result-object p1

    return-object p1
.end method

.method invokeLoadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->loadRequestCallback:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;->loadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    :cond_1
    return-void
.end method

.method public isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .locals 1

    .line 913
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->isLocallyCached()Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 119
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Headers;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headers:Lcom/koushikdutta/async/http/Headers;

    .line 120
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 121
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 897
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const-string v0, "GET"

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->methodWasSet:Z

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->loadInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method loadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 420
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v1, v2, p1, p2}, Lcom/koushikdutta/ion/Loader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using loader: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2, v2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-void

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown uri scheme"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method

.method public noCache()Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 2

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache:Z

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noCache()Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache()Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object v0

    return-object v0
.end method

.method public onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->headersCallback:Lcom/koushikdutta/ion/HeadersCallback;

    return-object p0
.end method

.method public bridge synthetic onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progress:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressBar:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public bridge synthetic progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 589
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public bridge synthetic progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyHost:Ljava/lang/String;

    .line 954
    iput p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->proxyPort:I

    return-object p0
.end method

.method public bridge synthetic proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method recursiveResolveRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 359
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/SimpleFuture;)V

    .line 383
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-object v0
.end method

.method public removeCachedBitmap()V
    .locals 1

    .line 908
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->removeCachedBitmap()V

    return-void
.end method

.method resolveAndLoadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;)V"
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->recursiveResolveRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$4;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$4;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    .line 389
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method resolveRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/async/future/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 433
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-interface {v2}, Lcom/koushikdutta/ion/IonContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v1, v2, v3, p1}, Lcom/koushikdutta/ion/Loader;->resolve(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    .line 786
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    invoke-direct {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 789
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    .line 796
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    invoke-direct {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->bodyParameters:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setByteArrayBody([B)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 2

    if-eqz p1, :cond_0

    .line 1030
    new-instance v0, Lcom/koushikdutta/async/http/body/StreamBody;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/body/StreamBody;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setByteArrayBody([B)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setByteArrayBody([B)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setDocumentBody(Lorg/w3c/dom/Document;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1012
    new-instance v0, Lcom/koushikdutta/async/http/body/DocumentBody;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/body/DocumentBody;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setDocumentBody(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setDocumentBody(Lorg/w3c/dom/Document;)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setFileBody(Ljava/io/File;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1023
    new-instance v0, Lcom/koushikdutta/async/http/body/FileBody;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/body/FileBody;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setFileBody(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setFileBody(Ljava/io/File;)Lcom/koushikdutta/ion/builder/Builders$Any$F;

    move-result-object p1

    return-object p1
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public bridge synthetic setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    if-nez p2, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/Headers;->removeAll(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :goto_0
    return-object p0
.end method

.method public varargs setHeader([Lcom/koushikdutta/async/http/NameValuePair;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 5

    .line 1048
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 1049
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1050
    invoke-interface {v3}, Lcom/koushikdutta/async/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/koushikdutta/async/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader([Lcom/koushikdutta/async/http/NameValuePair;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader([Lcom/koushikdutta/async/http/NameValuePair;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public setJsonArrayBody(Lcom/google/gson/JsonArray;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 221
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonBody;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonArrayBody(Lcom/google/gson/JsonArray;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonArrayBody(Lcom/google/gson/JsonArray;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setJsonObjectBody(Lcom/google/gson/JsonObject;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 216
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonBody;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonObjectBody(Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonObjectBody(Lcom/google/gson/JsonObject;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setJsonPojoBody(Ljava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 3

    .line 966
    new-instance v0, Lcom/koushikdutta/ion/gson/PojoBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/koushikdutta/ion/gson/PojoBody;-><init>(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 2

    .line 960
    new-instance v0, Lcom/koushikdutta/ion/gson/PojoBody;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/koushikdutta/ion/gson/PojoBody;-><init>(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setJsonPojoBody(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonPojoBody(Ljava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logTag:Ljava/lang/String;

    .line 926
    iput p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->logLevel:I

    return-object p0
.end method

.method public bridge synthetic setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 879
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 812
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 815
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p3}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    if-nez p2, :cond_1

    .line 818
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 821
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/body/FilePart;->setContentType(Ljava/lang/String;)V

    .line 823
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    return-object p0
.end method

.method public bridge synthetic setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 831
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 834
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->multipartBody:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addStringPart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .line 840
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 841
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 843
    invoke-virtual {p0, v1, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStreamBody(Ljava/io/InputStream;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 2

    .line 1036
    new-instance v0, Lcom/koushikdutta/async/http/body/StreamBody;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/body/StreamBody;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setStreamBody(Ljava/io/InputStream;I)Lcom/koushikdutta/ion/builder/Builders$Any$F;
    .locals 1

    .line 1042
    new-instance v0, Lcom/koushikdutta/async/http/body/StreamBody;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StreamBody;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    return-object p0
.end method

.method public setStringBody(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 226
    new-instance v0, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStringBody(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setStringBody(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeout(I)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->timeoutMilliseconds:I

    return-object p0
.end method

.method public bridge synthetic setTimeout(I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setTimeout(I)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public bridge synthetic uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public bridge synthetic uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .locals 0

    .line 999
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    return-object p0
.end method

.method public bridge synthetic uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object p1

    return-object p1
.end method

.method public userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .locals 1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "User-Agent"

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withBitmap()Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
    .locals 1

    .line 887
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V

    return-object v0
.end method

.method public bridge synthetic withBitmap()Lcom/koushikdutta/ion/builder/Builders$Any$BF;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->withBitmap()Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 773
    new-instance v0, Lcom/koushikdutta/async/stream/FileDataSink;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/stream/FileDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$8;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$8;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Ljava/io/File;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->write(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/OutputStream;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/io/OutputStream;",
            ">(TF;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TF;>;"
        }
    .end annotation

    .line 768
    new-instance v0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/OutputStream;Z)Lcom/koushikdutta/ion/future/ResponseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/io/OutputStream;",
            ">(TF;Z)",
            "Lcom/koushikdutta/ion/future/ResponseFuture<",
            "TF;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object p1

    return-object p1
.end method
