.class public Lcom/koushikdutta/ion/loader/VideoLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "VideoLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    :catch_1
    throw p0
.end method

.method static mustUseThumbnailUtils()Z
    .locals 2

    .line 43
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation

    const-string p1, "file"

    .line 48
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 51
    :cond_0
    invoke-static {p4}, Lcom/koushikdutta/ion/loader/MediaFile;->getFileType(Ljava/lang/String;)Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 52
    iget p1, v7, Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;->fileType:I

    invoke-static {p1}, Lcom/koushikdutta/ion/loader/MediaFile;->isVideoFileType(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 56
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p7, Lcom/koushikdutta/ion/loader/VideoLoader$1;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p5

    move v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/ion/loader/VideoLoader$1;-><init>(Lcom/koushikdutta/ion/loader/VideoLoader;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;IILjava/lang/String;Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;)V

    invoke-interface {p2, p7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method
