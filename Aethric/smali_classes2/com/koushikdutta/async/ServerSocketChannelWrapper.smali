.class Lcom/koushikdutta/async/ServerSocketChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "ServerSocketChannelWrapper.java"


# instance fields
.field mChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ChannelWrapper;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t read ServerSocketChannel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/ServerSocketChannelWrapper;->mChannel:Ljava/nio/channels/ServerSocketChannel;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public shutdownInput()V
    .locals 0

    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t write ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t write ServerSocketChannel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
