.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$socket:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->sendCachedDataOnNetworkThread()V

    return-void
.end method
