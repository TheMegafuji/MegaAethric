.class public Lcom/koushikdutta/ion/loader/StreamLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "StreamLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .locals 13
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

    .line 41
    new-instance v10, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v10}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 44
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getBitmapLoadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v12, Lcom/koushikdutta/ion/loader/StreamLoader$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p3

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/koushikdutta/ion/loader/StreamLoader$1;-><init>(Lcom/koushikdutta/ion/loader/StreamLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v10
.end method

.method protected loadGif(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-static {p3}, Lcom/koushikdutta/async/util/StreamUtility;->readToEndAsArray(Ljava/io/InputStream;)[B

    move-result-object p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 29
    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->nextFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object p3

    .line 30
    new-instance v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object p4, p4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object p3, p3, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-direct {v1, p1, p4, p3, p2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 31
    iput-object v0, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    return-object v1
.end method
