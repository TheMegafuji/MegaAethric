.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyCacher"
.end annotation


# instance fields
.field cached:Lcom/koushikdutta/async/ByteBufferList;

.field editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->abort()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 395
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->abort()V

    .line 396
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->close()V

    return-void
.end method

.method public commit()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->commit()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    :cond_0
    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    if-eqz v0, :cond_1

    .line 349
    invoke-super {p0, p1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 351
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    .line 357
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 362
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    :try_start_1
    invoke-static {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->writeOutputStream(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    throw v1

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 382
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 378
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 385
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 387
    iget-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    if-lez p1, :cond_4

    .line 388
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    .line 389
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_4
    return-void

    .line 381
    :goto_3
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 382
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    throw p1
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 0

    .line 341
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->abort()V

    :cond_0
    return-void
.end method
