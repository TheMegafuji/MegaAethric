.class Lcom/koushikdutta/ion/IonDrawable$1;
.super Ljava/lang/Object;
.source "IonDrawable.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonDrawable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonDrawable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$1;->this$0:Lcom/koushikdutta/ion/IonDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$1;->this$0:Lcom/koushikdutta/ion/IonDrawable;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonDrawable$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method
