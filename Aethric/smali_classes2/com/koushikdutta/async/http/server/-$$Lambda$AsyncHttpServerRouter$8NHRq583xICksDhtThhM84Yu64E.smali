.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/res/AssetManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$0:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$0:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->lambda$directory$3(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method
