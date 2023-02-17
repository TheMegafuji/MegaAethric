.class Lcom/koushikdutta/ion/LoadBitmapRegion$1;
.super Ljava/lang/Object;
.source "LoadBitmapRegion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/LoadBitmapRegion;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/LoadBitmapRegion;

.field final synthetic val$decoder:Landroid/graphics/BitmapRegionDecoder;

.field final synthetic val$inSampleSize:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$region:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/LoadBitmapRegion;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;ILjava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->this$0:Lcom/koushikdutta/ion/LoadBitmapRegion;

    iput-object p2, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$decoder:Landroid/graphics/BitmapRegionDecoder;

    iput-object p3, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$region:Landroid/graphics/Rect;

    iput p4, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$inSampleSize:I

    iput-object p5, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$decoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$region:Landroid/graphics/Rect;

    iget v3, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$inSampleSize:I

    invoke-static {v1, v2, v3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->loadRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->val$key:Ljava/lang/String;

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 26
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->this$0:Lcom/koushikdutta/ion/LoadBitmapRegion;

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/ion/LoadBitmapRegion;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "failed to load bitmap region"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 29
    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmapRegion$1;->this$0:Lcom/koushikdutta/ion/LoadBitmapRegion;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/ion/LoadBitmapRegion;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    :goto_0
    return-void
.end method
