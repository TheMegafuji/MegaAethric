.class Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$9;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 6

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    move-object v4, p1

    if-eqz v4, :cond_0

    .line 632
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 633
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v5, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
