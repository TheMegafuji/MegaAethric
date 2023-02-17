.class Lcom/koushikdutta/async/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic val$redirectCount:I

.field final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$redirectCount:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$redirectCount:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method
