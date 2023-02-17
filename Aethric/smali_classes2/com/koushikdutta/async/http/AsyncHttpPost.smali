.class public Lcom/koushikdutta/async/http/AsyncHttpPost;
.super Lcom/koushikdutta/async/http/AsyncHttpRequest;
.source "AsyncHttpPost.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "POST"

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Landroid/net/Uri;)V

    return-void
.end method
