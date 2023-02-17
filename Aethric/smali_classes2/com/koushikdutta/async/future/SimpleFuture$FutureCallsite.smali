.class Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;
.super Ljava/lang/Object;
.source "SimpleFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/SimpleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureCallsite"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

.field e:Ljava/lang/Exception;

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method loop()V
    .locals 4

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    .line 123
    iget-object v2, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 126
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 127
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    .line 128
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    .line 130
    invoke-interface {v0, v1, v2, p0}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    goto :goto_0

    :cond_0
    return-void
.end method
