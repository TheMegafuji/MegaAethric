.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field public final synthetic f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$2:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$2:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$XM8x7A1psyQJxi_3vDipP0uRaRo;->f$3:I

    move-object v5, p2

    check-cast v5, Lcom/koushikdutta/async/AsyncSocket;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->lambda$getSocket$3$AsyncSocketMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method
