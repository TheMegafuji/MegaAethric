.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field public final synthetic f$1:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;->f$1:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$4djIbsyqrDa0j0nbuYZm-NmTySw;->f$1:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->lambda$proxy$7$AsyncHttpServerResponseImpl(Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;)V

    return-void
.end method
