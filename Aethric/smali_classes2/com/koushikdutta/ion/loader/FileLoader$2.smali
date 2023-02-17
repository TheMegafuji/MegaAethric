.class Lcom/koushikdutta/ion/loader/FileLoader$2;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/FileLoader;->load(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/loader/FileLoader;

.field final synthetic val$callback:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic val$ion:Lcom/koushikdutta/ion/Ion;

.field final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic val$ret:Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->this$0:Lcom/koushikdutta/ion/loader/FileLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$ion:Lcom/koushikdutta/ion/Ion;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$ret:Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;

    iput-object p5, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 93
    new-instance v3, Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getHttpClient()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/koushikdutta/async/FileDataEmitter;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V

    .line 94
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$ret:Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;->setComplete(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    new-instance v9, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    sget-object v6, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    iget-object v8, p0, Lcom/koushikdutta/ion/loader/FileLoader$2;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const/4 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;JLcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0, v9}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
