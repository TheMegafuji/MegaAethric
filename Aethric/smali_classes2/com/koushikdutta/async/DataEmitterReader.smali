.class public Lcom/koushikdutta/async/DataEmitterReader;
.super Ljava/lang/Object;
.source "DataEmitterReader.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field mPendingData:Lcom/koushikdutta/async/ByteBufferList;

.field mPendingRead:Lcom/koushikdutta/async/callback/DataCallback;

.field mPendingReadLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private handlePendingData(Lcom/koushikdutta/async/DataEmitter;)Z
    .locals 2

    .line 17
    iget v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingReadLength:I

    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingRead:Lcom/koushikdutta/async/callback/DataCallback;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingRead:Lcom/koushikdutta/async/callback/DataCallback;

    .line 22
    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingReadLength:I

    iget-object v2, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 35
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    .line 37
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/DataEmitterReader;->handlePendingData(Lcom/koushikdutta/async/DataEmitter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingRead:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    return-void
.end method

.method public read(ILcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingReadLength:I

    .line 12
    iput-object p2, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingRead:Lcom/koushikdutta/async/callback/DataCallback;

    .line 13
    iget-object p1, p0, Lcom/koushikdutta/async/DataEmitterReader;->mPendingData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void
.end method
