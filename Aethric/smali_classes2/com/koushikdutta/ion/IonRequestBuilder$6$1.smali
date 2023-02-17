.class Lcom/koushikdutta/ion/IonRequestBuilder$6$1;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$6;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$6;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$6;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$6;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder$6;->self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->access$000(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
