.class Lcom/koushikdutta/ion/TransformBitmap$1;
.super Ljava/lang/Object;
.source "TransformBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/TransformBitmap;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/TransformBitmap;

.field final synthetic val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/TransformBitmap;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iput-object p2, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/TransformBitmap;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v1, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object v2, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v2, v2, Lcom/koushikdutta/ion/TransformBitmap;->transforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/ion/bitmap/Transform;

    .line 65
    invoke-interface {v3, v1}, Lcom/koushikdutta/ion/bitmap/Transform;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "failed to transform bitmap"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v3, v3, Lcom/koushikdutta/ion/TransformBitmap;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v5, v5, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->val$result:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v1, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v1, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 72
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/TransformBitmap;->postProcess:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/TransformBitmap;->postProcess:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/ion/bitmap/PostProcess;

    .line 74
    invoke-interface {v3, v2}, Lcom/koushikdutta/ion/bitmap/PostProcess;->postProcess(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/ion/TransformBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 84
    iget-object v2, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/ion/TransformBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->this$0:Lcom/koushikdutta/ion/TransformBitmap;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v0}, Lcom/koushikdutta/ion/TransformBitmap;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    :goto_2
    return-void
.end method
