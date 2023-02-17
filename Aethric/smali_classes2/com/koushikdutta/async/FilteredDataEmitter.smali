.class public Lcom/koushikdutta/async/FilteredDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;
.implements Lcom/koushikdutta/async/DataTrackingEmitter;


# instance fields
.field closed:Z

.field private mEmitter:Lcom/koushikdutta/async/DataEmitter;

.field private totalRead:I

.field private tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->charset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->closed:Z

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    return v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public getDataTracker()Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 48
    iget-boolean p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->closed:Z

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    iget p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    .line 56
    :cond_1
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    if-eqz p2, :cond_2

    .line 58
    iget p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 60
    iget p2, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;->onData(I)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->resume()V

    return-void
.end method

.method public setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 20
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 21
    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataTracker(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    return-void
.end method
