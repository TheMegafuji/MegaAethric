.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnResponseCompleteData"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;-><init>()V

    return-void
.end method
