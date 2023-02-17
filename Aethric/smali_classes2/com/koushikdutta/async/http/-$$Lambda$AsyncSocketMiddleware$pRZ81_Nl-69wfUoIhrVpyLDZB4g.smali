.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenFutureCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$1:I

    iput-object p3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$2:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$1:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$pRZ81_Nl-69wfUoIhrVpyLDZB4g;->f$2:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->lambda$getSocket$1$AsyncSocketMiddleware(ILcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;[Ljava/net/InetAddress;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
