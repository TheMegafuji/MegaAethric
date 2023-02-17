.class Lcom/koushikdutta/async/http/AsyncHttpRequest$1;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Lcom/koushikdutta/async/http/RequestLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpRequest;->getRequestLine()Lcom/koushikdutta/async/http/RequestLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->access$000(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lcom/koushikdutta/async/http/ProtocolVersion;
    .locals 3

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/ProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/koushikdutta/async/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "%s %s %s"

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->access$000(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->access$100(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v0, "/"

    .line 36
    :cond_2
    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v7}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->access$000(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->this$0:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->access$100(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
