.class public Lcom/koushikdutta/async/stream/ByteBufferListInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferListInputStream.java"


# instance fields
.field bb:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    return p3
.end method
