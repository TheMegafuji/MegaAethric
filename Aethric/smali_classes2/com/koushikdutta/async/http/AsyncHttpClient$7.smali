.class Lcom/koushikdutta/async/http/AsyncHttpClient$7;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$future:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$future:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 548
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$future:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$800(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
