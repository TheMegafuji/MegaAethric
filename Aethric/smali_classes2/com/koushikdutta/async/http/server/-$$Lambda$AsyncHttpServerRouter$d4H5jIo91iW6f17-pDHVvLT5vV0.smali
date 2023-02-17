.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;->f$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;->f$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->lambda$websocket$0(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method
