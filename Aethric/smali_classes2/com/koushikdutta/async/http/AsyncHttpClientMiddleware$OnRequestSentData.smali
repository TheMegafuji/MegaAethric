.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRequestSentData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;-><init>()V

    return-void
.end method
