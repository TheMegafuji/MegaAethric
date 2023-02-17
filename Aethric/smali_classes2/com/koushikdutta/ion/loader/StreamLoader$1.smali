.class Lcom/koushikdutta/ion/loader/StreamLoader$1;
.super Ljava/lang/Object;
.source "StreamLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/StreamLoader;->loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/loader/StreamLoader;

.field final synthetic val$animateGif:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ion:Lcom/koushikdutta/ion/Ion;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resizeHeight:I

.field final synthetic val$resizeWidth:I

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/StreamLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->this$0:Lcom/koushikdutta/ion/loader/StreamLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$resizeWidth:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$resizeHeight:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$animateGif:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$key:Ljava/lang/String;

    iput-object p9, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->this$0:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/ion/loader/StreamLoader;->getInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    iget-object v4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v4}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v4

    iget v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$resizeWidth:I

    iget v6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$resizeHeight:I

    invoke-virtual {v4, v3, v5, v6}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Ljava/io/InputStream;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    new-array v5, v2, [Ljava/io/Closeable;

    aput-object v3, v5, v1

    .line 51
    invoke-static {v5}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 52
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    iget-object v6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->this$0:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v7, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/koushikdutta/ion/loader/StreamLoader;->getInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 55
    iget-boolean v6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$animateGif:Z

    if-eqz v6, :cond_0

    const-string v6, "image/gif"

    iget-object v7, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    iget-object v6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->this$0:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v7, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7, v5, v3, v4}, Lcom/koushikdutta/ion/loader/StreamLoader;->loadGif(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v4

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v3, v4}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->loadBitmap(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 62
    new-instance v7, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v8, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$key:Ljava/lang/String;

    iget-object v4, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v7, v8, v4, v6, v5}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    move-object v4, v7

    .line 64
    :goto_0
    sget-object v5, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v5, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 65
    iget-object v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 74
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_3

    .line 61
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Bitmap failed to load"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 71
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 74
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v3, v0

    .line 68
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 74
    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    :goto_4
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v0
.end method
