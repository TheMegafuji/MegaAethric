.class Lcom/koushikdutta/ion/LoadDeepZoom$1;
.super Ljava/lang/Object;
.source "LoadDeepZoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/LoadDeepZoom;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

.field final synthetic val$response:Lcom/koushikdutta/ion/Response;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/LoadDeepZoom;Ljava/io/File;Lcom/koushikdutta/ion/Response;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iput-object p2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->val$tempFile:Ljava/io/File;

    iput-object p3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->val$response:Lcom/koushikdutta/ion/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v3, v3, Lcom/koushikdutta/ion/LoadDeepZoom;->fileCache:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v3, v3, Lcom/koushikdutta/ion/LoadDeepZoom;->fileCache:Lcom/koushikdutta/async/util/FileCache;

    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, v4, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    new-array v5, v1, [Ljava/io/File;

    iget-object v6, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->val$tempFile:Ljava/io/File;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/util/FileCache;->commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V

    .line 60
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v3, v3, Lcom/koushikdutta/ion/LoadDeepZoom;->fileCache:Lcom/koushikdutta/async/util/FileCache;

    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, v4, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/util/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->val$tempFile:Ljava/io/File;

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, v4, Lcom/koushikdutta/ion/LoadDeepZoom;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v4}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v2}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 67
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 68
    iget-object v6, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-boolean v6, v6, Lcom/koushikdutta/ion/LoadDeepZoom;->animateGif:Z

    if-eqz v6, :cond_1

    const-string v6, "image/gif"

    iget-object v7, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v3, v3, Lcom/koushikdutta/ion/LoadDeepZoom;->fileCache:Lcom/koushikdutta/async/util/FileCache;

    iget-object v6, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v6, v6, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/koushikdutta/async/util/FileCache;->get(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    new-instance v6, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->readToEndAsArray(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 72
    invoke-virtual {v6}, Lcom/koushikdutta/ion/gif/GifDecoder;->nextFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v7

    .line 73
    new-instance v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v9, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v9, v9, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    iget-object v4, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v7, v7, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v4, v7, v5}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 74
    iput-object v6, v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 75
    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    invoke-virtual {v4, v0, v8}, Lcom/koushikdutta/ion/LoadDeepZoom;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    .line 93
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 80
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 84
    new-instance v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v9, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v9, v9, Lcom/koushikdutta/ion/LoadDeepZoom;->key:Ljava/lang/String;

    iget-object v4, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v8, v9, v4, v7, v5}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 85
    iput-object v6, v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 86
    iput-object v3, v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->decoderFile:Ljava/io/File;

    .line 87
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->val$response:Lcom/koushikdutta/ion/Response;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Response;->getServedFrom()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v3

    iput-object v3, v8, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 88
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    invoke-virtual {v3, v0, v8}, Lcom/koushikdutta/ion/LoadDeepZoom;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    .line 93
    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_2

    .line 82
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "unable to load decoder"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v4, v0

    .line 90
    :goto_1
    :try_start_4
    iget-object v5, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->this$0:Lcom/koushikdutta/ion/LoadDeepZoom;

    invoke-virtual {v5, v3, v0}, Lcom/koushikdutta/ion/LoadDeepZoom;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    .line 93
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception v3

    move-object v0, v4

    :goto_3
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v3
.end method
