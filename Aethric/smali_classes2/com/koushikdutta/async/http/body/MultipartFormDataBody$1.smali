.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->onBoundaryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field final synthetic val$headers:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\r"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    .line 84
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 85
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 86
    new-instance p1, Lcom/koushikdutta/async/http/body/Part;

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/body/Part;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;->onPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p1, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastPart:Lcom/koushikdutta/async/http/body/Part;

    .line 96
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastData:Lcom/koushikdutta/async/ByteBufferList;

    .line 97
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
