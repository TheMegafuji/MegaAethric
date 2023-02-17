.class public Lcom/koushikdutta/async/stream/FileDataSink;
.super Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.source "FileDataSink.java"


# instance fields
.field file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    .line 17
    iput-object p2, p0, Lcom/koushikdutta/async/stream/FileDataSink;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/stream/FileDataSink;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/FileDataSink;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/FileDataSink;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_0
    return-object v0
.end method
