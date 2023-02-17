.class public Lcom/koushikdutta/ion/bitmap/IonBitmapCache;
.super Ljava/lang/Object;
.source "IonBitmapCache.java"


# static fields
.field public static final DEFAULT_ERROR_CACHE_DURATION:J = 0x7530L


# instance fields
.field cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

.field errorCacheDuration:J

.field heapRatio:D

.field ion:Lcom/koushikdutta/ion/Ion;

.field metrics:Landroid/util/DisplayMetrics;

.field resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 38
    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->errorCacheDuration:J

    const-wide v0, 0x3fc2492492492492L    # 0.14285714285714285

    .line 67
    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->heapRatio:D

    .line 49
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->ion:Lcom/koushikdutta/ion/Ion;

    .line 51
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->metrics:Landroid/util/DisplayMetrics;

    const-string p1, "window"

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 55
    new-instance v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->resources:Landroid/content/res/Resources;

    .line 56
    new-instance p1, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-static {v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getHeapSize(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    invoke-direct {p1, v0}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    return-void
.end method

.method private computeTarget(II)Landroid/graphics/Point;
    .locals 1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->metrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    const v0, 0x7fffffff

    if-gtz p1, :cond_1

    const p1, 0x7fffffff

    :cond_1
    if-nez p2, :cond_2

    .line 128
    iget-object p2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->metrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_2
    if-gtz p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, p2

    .line 131
    :goto_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getHeapSize(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    .line 256
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    mul-int/lit16 p0, p0, 0x400

    mul-int/lit16 p0, p0, 0x400

    return p0
.end method

.method private static getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 181
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 182
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0xc350

    :try_start_1
    new-array v2, v2, [B

    .line 207
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 208
    invoke-static {v2, v0, v3}, Lcom/koushikdutta/ion/bitmap/Exif;->getOrientation([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v0

    .line 213
    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 216
    invoke-static {p0, v2}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v1, 0xc350

    :try_start_1
    new-array v1, v1, [B

    .line 243
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 244
    invoke-static {v1, v0, v3}, Lcom/koushikdutta/ion/bitmap/Exif;->getOrientation([BII)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :catch_1
    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v2, v3, v0

    .line 249
    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 252
    invoke-static {p0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    const p0, 0xc350

    .line 222
    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->mark(I)V

    const/4 v1, 0x0

    :try_start_0
    new-array p0, p0, [B

    .line 225
    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->read([B)I

    move-result v2

    .line 226
    invoke-static {p0, v1, v2}, Lcom/koushikdutta/ion/bitmap/Exif;->getOrientation([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    invoke-virtual {v0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset()V

    const/4 p0, 0x0

    .line 233
    invoke-static {v0, p0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 234
    invoke-static {p0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadBitmap([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 187
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->getOrientation([BII)I

    move-result p0

    .line 191
    invoke-static {p3, p0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 196
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 197
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    invoke-virtual {p0, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private prepareBitmapOptions(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;
        }
    .end annotation

    .line 135
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz v0, :cond_0

    .line 137
    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->computeTarget(II)Landroid/graphics/Point;

    move-result-object p2

    .line 138
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p3, p3

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 139
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 142
    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 143
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object p1, p3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object p3

    .line 136
    :cond_0
    new-instance p2, Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p2, p3, p1}, Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;-><init>(II)V

    throw p2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->evictAllBitmapInfo()V

    return-void
.end method

.method public dump()V
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IonBitmapCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeMemory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->getBitmapInfo(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 95
    :cond_1
    iget-object v2, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "ION"

    const-string v2, "Cached bitmap was recycled."

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "This may happen if passing Ion bitmaps directly to notification builders or remote media clients."

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Create a deep copy before doing this."

    .line 98
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 102
    :cond_2
    iget-object v2, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_3

    return-object v1

    .line 108
    :cond_3
    iget-wide v2, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->loadTime:J

    iget-wide v4, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->errorCacheDuration:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    return-object v1

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorCacheDuration()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->errorCacheDuration:J

    return-wide v0
.end method

.method public getHeapRatio()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->heapRatio:D

    return-wide v0
.end method

.method public prepareBitmapOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0, v0, p3, p4}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    return-object p1
.end method

.method public prepareBitmapOptions(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    invoke-direct {p0, v0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    return-object p1
.end method

.method public prepareBitmapOptions(Ljava/io/InputStream;II)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 171
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    invoke-direct {p0, v0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    return-object p1
.end method

.method public prepareBitmapOptions([BIIII)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    invoke-direct {p0, v0, p4, p5}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->prepareBitmapOptions(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->getHeapSize(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->heapRatio:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 78
    iget-object v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->maxSize()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    iget-object v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v2, v0, v1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->setMaxSize(J)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    iget-object v1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSoft(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    iget-object v1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->putSoft(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->cache:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->removeBitmapInfo(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public setErrorCacheDuration(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->errorCacheDuration:J

    return-void
.end method

.method public setHeapRatio(D)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->heapRatio:D

    return-void
.end method
