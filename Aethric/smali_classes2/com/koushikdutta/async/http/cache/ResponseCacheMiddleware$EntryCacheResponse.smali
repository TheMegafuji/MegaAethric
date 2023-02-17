.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCacheResponse"
.end annotation


# instance fields
.field private final entry:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

.field private final snapshot:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 708
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->entry:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    .line 709
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->snapshot:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/FileInputStream;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->snapshot:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public bridge synthetic getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->entry:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->access$200(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
