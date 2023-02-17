.class Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/RequestBodyUploadObserver;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/RequestBodyUploadObserver;

.field totalWritten:I

.field final synthetic val$length:I

.field final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/RequestBodyUploadObserver;Lcom/koushikdutta/async/DataSink;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->this$0:Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iput-object p2, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    iput p3, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 35
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    .line 36
    iget p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->totalWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->totalWritten:I

    .line 37
    iget-object p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->this$0:Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iget-object p1, p1, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->callback:Lcom/koushikdutta/ion/ProgressCallback;

    iget v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->totalWritten:I

    int-to-long v0, v0

    iget v2, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;->val$length:I

    int-to-long v2, v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/koushikdutta/ion/ProgressCallback;->onProgress(JJ)V

    return-void
.end method
