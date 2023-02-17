.class public abstract Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;-><init>()V

    return-void
.end method
