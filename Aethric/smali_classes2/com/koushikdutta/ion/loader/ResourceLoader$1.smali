.class Lcom/koushikdutta/ion/loader/ResourceLoader$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/ResourceLoader;->loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/loader/ResourceLoader;

.field final synthetic val$animateGif:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ion:Lcom/koushikdutta/ion/Ion;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resizeHeight:I

.field final synthetic val$resizeWidth:I

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/ResourceLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->this$0:Lcom/koushikdutta/ion/loader/ResourceLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$resizeWidth:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$resizeHeight:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$animateGif:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$key:Ljava/lang/String;

    iput-object p9, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->access$100(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    iget-object v2, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->res:Landroid/content/res/Resources;

    iget v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->id:I

    iget v4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$resizeWidth:I

    iget v5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$resizeHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 77
    iget-boolean v3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$animateGif:Z

    if-eqz v3, :cond_0

    const-string v3, "image/gif"

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->res:Landroid/content/res/Resources;

    iget v0, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->id:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 80
    :try_start_1
    iget-object v5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->this$0:Lcom/koushikdutta/ion/loader/ResourceLoader;

    iget-object v6, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$key:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v0, v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->loadGif(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v0, v2, v3

    .line 83
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    throw v1

    .line 87
    :cond_0
    iget-object v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->res:Landroid/content/res/Resources;

    iget v0, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->id:I

    invoke-static {v3, v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->loadBitmap(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$key:Ljava/lang/String;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    move-object v1, v3

    .line 92
    :goto_0
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
