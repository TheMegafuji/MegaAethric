.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$rUIheKlgpCsplfLcT8rqDMjUcf8;->f$1:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->lambda$null$5$AsyncHttpServerResponseImpl(Ljava/io/InputStream;Ljava/lang/Exception;)V

    return-void
.end method
