.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;J)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iput-wide p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(I)V
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-interface {v0}, Lcom/koushikdutta/ion/IonContext;->isAlive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object p1, p1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->initialRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v0, "context has died, cancelling"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->cancelSilently()Z

    return-void

    :cond_0
    int-to-float v0, p1

    .line 540
    iget-wide v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->val$total:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 542
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->progressBar:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->progressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->lastPercent:I

    if-eq v0, v1, :cond_2

    .line 543
    sget-object v1, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;I)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 561
    :cond_2
    iput v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->lastPercent:I

    .line 563
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->progress:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->progress:Lcom/koushikdutta/ion/ProgressCallback;

    int-to-long v1, p1

    iget-wide v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->val$total:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/koushikdutta/ion/ProgressCallback;->onProgress(JJ)V

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->progressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_4

    .line 567
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;I)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
