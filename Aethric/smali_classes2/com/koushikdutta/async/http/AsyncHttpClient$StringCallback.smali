.class public abstract Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StringCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;-><init>()V

    return-void
.end method
