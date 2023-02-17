.class Lcom/koushikdutta/ion/IonRequestBuilder$6;
.super Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.source "IonRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
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

.field final synthetic val$parser:Lcom/koushikdutta/async/parser/AsyncParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V

    .line 667
    iput-object p0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->self:Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 670
    invoke-super {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    .line 671
    iget-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$6;->emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/parser/AsyncParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonRequestBuilder$6$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$6;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 666
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;->transform(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method
