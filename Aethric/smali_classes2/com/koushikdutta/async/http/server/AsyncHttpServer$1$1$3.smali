.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onHeadersReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->resume()V

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->access$000(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->hasContinued:Z

    .line 148
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onHeadersReceived()V

    return-void
.end method
