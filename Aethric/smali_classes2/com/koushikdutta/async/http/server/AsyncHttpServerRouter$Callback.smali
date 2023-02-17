.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
.implements Lcom/koushikdutta/async/http/server/RouteMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 2

    .line 375
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p1, 0x194

    .line 377
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 378
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    .line 382
    :cond_0
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method

.method public route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object p1

    return-object p1
.end method
