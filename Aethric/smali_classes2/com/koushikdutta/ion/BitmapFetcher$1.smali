.class Lcom/koushikdutta/ion/BitmapFetcher$1;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher;->fastLoad(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/koushikdutta/ion/BitmapFetcher;

.field final synthetic val$callback:Lcom/koushikdutta/ion/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapCallback;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->this$0:Lcom/koushikdutta/ion/BitmapFetcher;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->val$callback:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->val$callback:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/BitmapCallback;->report(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/BitmapFetcher$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method
