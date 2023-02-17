.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnResponseReadyData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;-><init>()V

    return-void
.end method
