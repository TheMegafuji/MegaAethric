.class Lcom/koushikdutta/ion/LoadBitmap$1;
.super Ljava/lang/Object;
.source "LoadBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/LoadBitmap;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/LoadBitmap;

.field final synthetic val$response:Lcom/koushikdutta/ion/Response;

.field final synthetic val$result:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/LoadBitmap;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/ion/Response;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iput-object p2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->val$result:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->val$response:Lcom/koushikdutta/ion/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadBitmap;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/LoadBitmap;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->val$result:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->val$result:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v2, v2, Lcom/koushikdutta/ion/LoadBitmap;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, v2, Lcom/koushikdutta/ion/Ion;->bitmapCache:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget v7, v2, Lcom/koushikdutta/ion/LoadBitmap;->resizeWidth:I

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget v8, v2, Lcom/koushikdutta/ion/LoadBitmap;->resizeHeight:I

    invoke-virtual/range {v3 .. v8}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions([BIIII)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 57
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 58
    iget-object v4, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget-boolean v4, v4, Lcom/koushikdutta/ion/LoadBitmap;->animateGif:Z

    if-eqz v4, :cond_1

    const-string v4, "image/gif"

    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v4, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>([BII)V

    .line 61
    invoke-virtual {v4}, Lcom/koushikdutta/ion/gif/GifDecoder;->nextFrame()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v5

    .line 62
    iget-object v1, v5, Lcom/koushikdutta/ion/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    move-object v5, v4

    move-object v4, v0

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v4, v5, v6, v2}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->loadBitmap([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_2

    move-object v5, v0

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    .line 73
    :goto_0
    :try_start_2
    new-instance v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v7, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v7, v7, Lcom/koushikdutta/ion/LoadBitmap;->key:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v1, v3}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 74
    iput-object v5, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 75
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->val$response:Lcom/koushikdutta/ion/Response;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Response;->getServedFrom()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v1

    iput-object v1, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 77
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    invoke-virtual {v1, v0, v6}, Lcom/koushikdutta/ion/LoadBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v4

    goto :goto_3

    .line 70
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "failed to load bitmap"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 83
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    invoke-virtual {v3, v2, v0}, Lcom/koushikdutta/ion/LoadBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    :goto_2
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v1, v0

    .line 80
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->this$0:Lcom/koushikdutta/ion/LoadBitmap;

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4, v0}, Lcom/koushikdutta/ion/LoadBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :goto_4
    return-void

    :catchall_2
    move-exception v0

    .line 86
    :goto_5
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    throw v0
.end method
