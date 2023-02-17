.class final Lcom/koushikdutta/ion/bitmap/MarkableInputStream;
.super Ljava/io/InputStream;
.source "MarkableInputStream.java"


# instance fields
.field private defaultMark:J

.field private final in:Ljava/io/InputStream;

.field private limit:J

.field private offset:J

.field private reset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->defaultMark:J

    .line 37
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private setLimit(J)V
    .locals 5

    .line 72
    :try_start_0
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->limit:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 75
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->skip(JJ)V

    goto :goto_0

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 80
    :goto_0
    iput-wide p1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->limit:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to mark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private skip(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1

    :cond_1
    add-long/2addr p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->savePosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->defaultMark:J

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    iget-wide v1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    :cond_0
    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 135
    iget-wide p2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    :cond_0
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->defaultMark:J

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset(J)V

    return-void
.end method

.method public reset(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->limit:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 97
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->skip(JJ)V

    .line 98
    iput-wide p1, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot reset"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public savePosition(I)J
    .locals 4

    .line 55
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 56
    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->limit:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->setLimit(J)V

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    return-wide v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 142
    iget-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->offset:J

    return-wide p1
.end method
