.class public Lcom/koushikdutta/async/FilteredDataSink;
.super Lcom/koushikdutta/async/BufferedDataSink;
.source "FilteredDataSink.java"


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->setMaxBuffer(I)V

    return-void
.end method


# virtual methods
.method public filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    return-object p1
.end method

.method protected onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    return-void
.end method
