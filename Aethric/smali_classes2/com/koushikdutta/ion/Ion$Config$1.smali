.class Lcom/koushikdutta/ion/Ion$Config$1;
.super Ljava/lang/Object;
.source "Ion.java"

# interfaces
.implements Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/Ion$Config;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/Ion$Config;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config$1;->this$1:Lcom/koushikdutta/ion/Ion$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAsyncHttpRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .line 592
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    .line 593
    iget-object p1, p0, Lcom/koushikdutta/ion/Ion$Config$1;->this$1:Lcom/koushikdutta/ion/Ion$Config;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/ion/Ion$Config$1;->this$1:Lcom/koushikdutta/ion/Ion$Config;

    iget-object p2, p2, Lcom/koushikdutta/ion/Ion$Config;->this$0:Lcom/koushikdutta/ion/Ion;

    iget-object p2, p2, Lcom/koushikdutta/ion/Ion;->userAgent:Ljava/lang/String;

    const-string p3, "User-Agent"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_0
    return-object v0
.end method
