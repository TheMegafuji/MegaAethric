.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionClosedException;

    const-string v2, "connection closed before headers received."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionClosedException;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
