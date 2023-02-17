.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/FailCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field public final synthetic f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$2:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$3:I

    return-void
.end method


# virtual methods
.method public final fail(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$1:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$2:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/-$$Lambda$AsyncSocketMiddleware$uJzALbPk9USbYv_o8xyYnZQgjag;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->lambda$getSocket$2$AsyncSocketMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V

    return-void
.end method
