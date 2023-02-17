.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->onStringAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object p1, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
