.class Lcom/koushikdutta/async/http/AsyncHttpClient$5;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$ret:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$5;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$5;->val$ret:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$5;->val$ret:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$5;->val$ret:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onHeadersSent()V

    :goto_0
    return-void
.end method
