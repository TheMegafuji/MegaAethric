.class Lcom/koushikdutta/ion/IonRequestBuilder$2$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$2;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$2;

.field final synthetic val$downloaded:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$2;JJ)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iput-wide p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->val$downloaded:J

    iput-wide p4, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->val$ret:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$2;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->uploadProgressHandler:Lcom/koushikdutta/ion/ProgressCallback;

    iget-wide v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->val$downloaded:J

    iget-wide v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$2$1;->val$total:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/koushikdutta/ion/ProgressCallback;->onProgress(JJ)V

    :cond_1
    :goto_0
    return-void
.end method
