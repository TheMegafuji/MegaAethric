.class public Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field cachedResponseHeaders:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

.field candidate:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

.field contentLength:J

.field snapshot:[Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
