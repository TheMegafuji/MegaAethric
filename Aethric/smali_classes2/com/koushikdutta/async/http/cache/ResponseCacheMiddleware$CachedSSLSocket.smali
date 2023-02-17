.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;
.super Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedSSLSocket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 723
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
