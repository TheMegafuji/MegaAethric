.class Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;
.super Ljava/lang/Object;
.source "IonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IonGifDecoder"
.end annotation


# instance fields
.field currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

.field exception:Ljava/lang/Exception;

.field gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

.field isLoading:Z

.field loader:Ljava/lang/Runnable;

.field nextFrameRender:J

.field postLoad:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/koushikdutta/ion/IonDrawable;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonDrawable;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->this$0:Lcom/koushikdutta/ion/IonDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance p1, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;-><init>(Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->loader:Ljava/lang/Runnable;

    .line 201
    new-instance p1, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;

    invoke-direct {p1, p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;-><init>(Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;)V

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->postLoad:Ljava/lang/Runnable;

    .line 181
    iget-object p1, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/gif/GifDecoder;->mutate()Lcom/koushikdutta/ion/gif/GifDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 182
    invoke-virtual {p1}, Lcom/koushikdutta/ion/gif/GifDecoder;->getLastFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

    return-void
.end method


# virtual methods
.method public getCurrentFrame()Lcom/koushikdutta/ion/gif/GifFrame;
    .locals 7

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    iget-wide v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->getDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    .line 223
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->scheduleNextFrame()V

    .line 226
    :cond_0
    iget-wide v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 228
    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/gif/GifDecoder;->getLastFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

    if-eq v2, v3, :cond_2

    .line 230
    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/gif/GifDecoder;->getLastFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

    .line 232
    iget-wide v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->getDelay()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->getDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    goto :goto_0

    .line 235
    :cond_1
    iget-wide v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->getDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->nextFrameRender:J

    .line 237
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->scheduleNextFrame()V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

    return-object v0
.end method

.method getDelay()J
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->currentFrame:Lcom/koushikdutta/ion/gif/GifFrame;

    const-wide/16 v1, 0x64

    if-nez v0, :cond_0

    return-wide v1

    .line 213
    :cond_0
    iget v0, v0, Lcom/koushikdutta/ion/gif/GifFrame;->delay:I

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    return-wide v1
.end method

.method public declared-synchronized scheduleNextFrame()V
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->isLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 246
    monitor-exit p0

    return-void

    .line 247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->exception:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 248
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->this$0:Lcom/koushikdutta/ion/IonDrawable;

    invoke-static {v0}, Lcom/koushikdutta/ion/IonDrawable;->access$100(Lcom/koushikdutta/ion/IonDrawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->restart()V

    :cond_2
    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->isLoading:Z

    .line 252
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->loader:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
