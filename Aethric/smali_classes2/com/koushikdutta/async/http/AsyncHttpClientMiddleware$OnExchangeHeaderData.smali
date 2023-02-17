.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnExchangeHeaderData"
.end annotation


# instance fields
.field public receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

.field public sendHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;-><init>()V

    return-void
.end method
