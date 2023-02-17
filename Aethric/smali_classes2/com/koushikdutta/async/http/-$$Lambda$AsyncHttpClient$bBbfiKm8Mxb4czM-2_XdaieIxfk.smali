.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field public final synthetic f$1:Lcom/koushikdutta/async/http/callback/RequestCallback;

.field public final synthetic f$2:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic f$3:Lcom/koushikdutta/async/parser/AsyncParser;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$1:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$2:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$3:Lcom/koushikdutta/async/parser/AsyncParser;

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 6

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$1:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$2:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncHttpClient$bBbfiKm8Mxb4czM-2_XdaieIxfk;->f$3:Lcom/koushikdutta/async/parser/AsyncParser;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->lambda$execute$1$AsyncHttpClient(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method
