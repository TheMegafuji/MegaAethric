.class public Lcom/koushikdutta/async/stream/OutputStreamDataCallback;
.super Ljava/lang/Object;
.source "OutputStreamDataCallback.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field private mOutput:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->mOutput:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->mOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 26
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->onCompleted(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 35
    :goto_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    throw p1
.end method
