.class Lcom/koushikdutta/ion/IonRequestBuilder$2;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->getLoaderEmitter(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

.field final synthetic val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 8

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 328
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgress:Lcom/koushikdutta/ion/ProgressCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/koushikdutta/ion/ProgressCallback;->onProgress(JJ)V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    if-eqz v0, :cond_3

    .line 338
    sget-object v0, Lcom/koushikdutta/ion/Ion;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$2;JJ)V

    invoke-static {v0, v7}, Lcom/koushikdutta/async/AsyncServer;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
