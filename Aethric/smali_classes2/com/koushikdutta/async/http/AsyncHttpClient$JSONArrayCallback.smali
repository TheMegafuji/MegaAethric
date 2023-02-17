.class public abstract Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JSONArrayCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;-><init>()V

    return-void
.end method
