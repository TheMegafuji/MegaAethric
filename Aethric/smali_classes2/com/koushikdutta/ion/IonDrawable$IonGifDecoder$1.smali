.class Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;
.super Ljava/lang/Object;
.source "IonDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->nextFrame()Lcom/koushikdutta/ion/gif/GifFrame;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    iput-object v0, v1, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->exception:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, v1, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->exception:Ljava/lang/Exception;

    .line 197
    :goto_0
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$1;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->postLoad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
