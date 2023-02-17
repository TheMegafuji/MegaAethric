.class Lcom/koushikdutta/ion/loader/FileLoader$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/FileLoader;->loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/loader/FileLoader;

.field final synthetic val$animateGif:Z

.field final synthetic val$ion:Lcom/koushikdutta/ion/Ion;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resizeHeight:I

.field final synthetic val$resizeWidth:I

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->this$0:Lcom/koushikdutta/ion/loader/FileLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$resizeWidth:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$resizeHeight:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$animateGif:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$uri:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    iget v2, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$resizeWidth:I

    iget v3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$resizeHeight:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    iget-boolean v3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$animateGif:Z

    if-eqz v3, :cond_1

    const-string v3, "image/gif"

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 57
    :try_start_1
    iget-object v5, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->this$0:Lcom/koushikdutta/ion/loader/FileLoader;

    iget-object v6, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$key:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3, v1}, Lcom/koushikdutta/ion/loader/FileLoader;->loadGif(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    .line 60
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v1

    .line 64
    :cond_1
    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->loadBitmap(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$key:Ljava/lang/String;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    move-object v1, v3

    .line 69
    :goto_0
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
