.class final enum Lcom/koushikdutta/async/http/Protocol$2;
.super Lcom/koushikdutta/async/http/Protocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/koushikdutta/async/http/Protocol$1;)V

    return-void
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
