.class Lcom/koushikdutta/ion/BitmapCallback$2;
.super Ljava/lang/Object;
.source "BitmapCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapCallback;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/BitmapCallback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapCallback;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Ljava/lang/Exception;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iput-object p3, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->key:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$e:Ljava/lang/Exception;

    iput-object v1, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->exception:Ljava/lang/Exception;

    .line 113
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$e:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->put(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/BitmapCallback;->put()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->put(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->getBitmapCache()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->putSoft(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 122
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v2, v2, Lcom/koushikdutta/ion/BitmapCallback;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/HashList;->remove(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/FutureCallback;

    .line 129
    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v2, v3, v0}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapCallback;->onReported()V

    return-void

    .line 124
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->this$0:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapCallback;->onReported()V

    return-void
.end method
