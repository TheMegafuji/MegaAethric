.class public abstract Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JSONObjectCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;-><init>()V

    return-void
.end method
