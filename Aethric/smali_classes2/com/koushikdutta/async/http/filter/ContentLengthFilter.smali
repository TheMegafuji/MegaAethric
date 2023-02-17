.class public Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ContentLengthFilter.java"


# instance fields
.field contentLength:J

.field totalRead:J

.field transformed:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 21
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    .line 9
    iput-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    .line 24
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 25
    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    iget-wide v3, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    long-to-int v1, v0

    invoke-virtual {p2, v2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 29
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 33
    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    .line 34
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 36
    iget-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->report(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 5

    if-nez p1, :cond_0

    .line 14
    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 15
    new-instance p1, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of data reached before content length was read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->isPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    return-void
.end method
