.class Lcom/koushikdutta/async/util/FileCache$InternalCache;
.super Lcom/koushikdutta/async/util/LruCache;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/util/FileCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .locals 2

    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    .line 205
    iget-wide v0, p1, Lcom/koushikdutta/async/util/FileCache;->size:J

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    check-cast p4, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-boolean p1, p1, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    if-eqz p1, :cond_1

    return-void

    .line 220
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-object p3, p3, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 203
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->sizeOf(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-wide v0, p1, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    iget-wide p1, p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->size:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method
