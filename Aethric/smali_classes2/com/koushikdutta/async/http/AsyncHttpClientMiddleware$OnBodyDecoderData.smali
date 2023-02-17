.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnBodyDecoderData"
.end annotation


# instance fields
.field public bodyEmitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;-><init>()V

    return-void
.end method
