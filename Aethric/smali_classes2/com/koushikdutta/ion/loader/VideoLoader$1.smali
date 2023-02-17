.class Lcom/koushikdutta/ion/loader/VideoLoader$1;
.super Ljava/lang/Object;
.source "VideoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/VideoLoader;->loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/loader/VideoLoader;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resizeHeight:I

.field final synthetic val$resizeWidth:I

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic val$type:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/VideoLoader;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;IILjava/lang/String;Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->this$0:Lcom/koushikdutta/ion/loader/VideoLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput p4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeWidth:I

    iput p5, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeHeight:I

    iput-object p6, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$key:Ljava/lang/String;

    iput-object p7, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$type:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$uri:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 60
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/koushikdutta/ion/loader/VideoLoader;->mustUseThumbnailUtils()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/loader/VideoLoader;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 74
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeWidth:I

    mul-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeHeight:I

    mul-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_3

    .line 76
    iget v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 77
    iget v4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$resizeHeight:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_3
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$type:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    iget-object v4, v4, Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 83
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "video bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    :goto_2
    return-void
.end method
