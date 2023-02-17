.class Lcom/koushikdutta/ion/IonRequestBuilder$5;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "IonRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
        "TT;>;"
    }
.end annotation


# instance fields
.field self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$close:Z

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/DataSink;Ljava/lang/Object;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-boolean p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$close:Z

    iput-object p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    iput-object p5, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 624
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .line 619
    invoke-super {p0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cleanup()V

    .line 620
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$close:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    :cond_0
    return-void
.end method

.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 627
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 628
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->emitter:Lcom/koushikdutta/async/DataEmitter;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$5$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$5;)V

    invoke-static {p1, v0, v1}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 616
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$5;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method
