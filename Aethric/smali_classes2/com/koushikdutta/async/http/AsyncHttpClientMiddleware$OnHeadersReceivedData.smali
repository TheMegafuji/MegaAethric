.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnHeadersReceivedData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;-><init>()V

    return-void
.end method
