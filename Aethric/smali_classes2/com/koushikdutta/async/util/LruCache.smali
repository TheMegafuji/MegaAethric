.class public Lcom/koushikdutta/async/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private missCount:I

.field private putCount:I

.field private size:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 52
    iput-wide p1, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p2, 0x0

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trimToSize(J)V
    .locals 6

    .line 147
    :goto_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 153
    :cond_0
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    .line 162
    iget v2, p0, Lcom/koushikdutta/async/util/LruCache;->evictionCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/koushikdutta/async/util/LruCache;->evictionCount:I

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public final evictAll()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;->trimToSize(J)V

    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    monitor-enter p0

    .line 311
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget p1, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I

    .line 72
    monitor-exit p0

    return-object v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/util/LruCache;->missCount:I

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_1
    monitor-enter p0

    .line 90
    :try_start_1
    iget v1, p0, Lcom/koushikdutta/async/util/LruCache;->createCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/util/LruCache;->createCount:I

    .line 91
    iget-object v1, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v2, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    .line 99
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 105
    :cond_3
    iget-wide v1, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J

    invoke-direct {p0, v1, v2}, Lcom/koushikdutta/async/util/LruCache;->trimToSize(J)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 99
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 75
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 64
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 282
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()J
    .locals 2

    monitor-enter p0

    .line 275
    :try_start_0
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/util/LruCache;->putCount:I

    .line 124
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-wide v1, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    .line 129
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_1
    iget-wide p1, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/util/LruCache;->trimToSize(J)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    monitor-enter p0

    .line 304
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-wide v1, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/util/LruCache;->size:J

    .line 185
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 185
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 176
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSize(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J

    return-void
.end method

.method public final declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 262
    :try_start_0
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/koushikdutta/async/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 323
    :try_start_0
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I

    iget v1, p0, Lcom/koushikdutta/async/util/LruCache;->missCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    iget v2, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 325
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/koushikdutta/async/util/LruCache;->maxSize:J

    .line 326
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Lcom/koushikdutta/async/util/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lcom/koushikdutta/async/util/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 325
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
