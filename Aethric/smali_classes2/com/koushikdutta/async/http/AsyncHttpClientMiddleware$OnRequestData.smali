.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRequestData"
.end annotation


# instance fields
.field public request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field public state:Lcom/koushikdutta/async/util/UntypedHashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/UntypedHashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    return-void
.end method
