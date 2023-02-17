.class Lcom/koushikdutta/async/http/AsyncHttpClient$8;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fout:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$fout:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCleanup()V
    .locals 2

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpResponse;

    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 582
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :catch_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
