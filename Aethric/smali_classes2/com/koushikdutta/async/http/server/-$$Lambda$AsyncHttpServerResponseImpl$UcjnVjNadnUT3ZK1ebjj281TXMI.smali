.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$UcjnVjNadnUT3ZK1ebjj281TXMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$UcjnVjNadnUT3ZK1ebjj281TXMI;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$UcjnVjNadnUT3ZK1ebjj281TXMI;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->lambda$sendBody$2$AsyncHttpServerResponseImpl(Ljava/lang/Exception;)V

    return-void
.end method
