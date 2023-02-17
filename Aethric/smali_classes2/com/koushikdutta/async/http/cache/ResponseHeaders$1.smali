.class Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "no-cache"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$002(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "no-store"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$102(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "max-age"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$202(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_0

    :cond_2
    const-string v0, "s-maxage"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$302(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I

    goto :goto_0

    :cond_3
    const-string p2, "public"

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$402(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_4
    const-string p2, "must-revalidate"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->access$502(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z

    :cond_5
    :goto_0
    return-void
.end method
