.class public Lcom/koushikdutta/async/dns/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\."

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic lambda$lookup$0(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    .line 66
    invoke-static {p1, p2, p3, p4}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public static lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, p1, v0, v1}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 66
    new-instance v7, Lcom/koushikdutta/async/dns/-$$Lambda$Dns$h3zjJ1_sFquD1Fs54f_yKYB_CAM;

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/dns/-$$Lambda$Dns$h3zjJ1_sFquD1Fs54f_yKYB_CAM;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v0

    :cond_0
    const/16 v0, 0x400

    .line 69
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    .line 71
    invoke-static {v2}, Lcom/koushikdutta/async/dns/Dns;->setQuery(I)I

    move-result v3

    int-to-short v3, v3

    if-nez p2, :cond_1

    .line 73
    invoke-static {v3}, Lcom/koushikdutta/async/dns/Dns;->setRecursion(I)I

    move-result v3

    int-to-short v3, v3

    .line 75
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 78
    :goto_0
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 86
    invoke-static {v0, p1}, Lcom/koushikdutta/async/dns/Dns;->addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/16 v3, 0xc

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    .line 88
    :goto_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-nez p2, :cond_4

    .line 93
    invoke-static {v0, p1}, Lcom/koushikdutta/async/dns/Dns;->addName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    const/16 p1, 0x1c

    .line 95
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 100
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "224.0.0.251"

    const/4 v3, 0x0

    if-nez p2, :cond_5

    .line 107
    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "8.8.8.8"

    const/16 v6, 0x35

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/AsyncServer;->connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object p0

    goto :goto_2

    .line 111
    :cond_5
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Lcom/koushikdutta/async/AsyncServer;->openDatagram(Ljava/net/InetAddress;IZ)Lcom/koushikdutta/async/AsyncDatagramSocket;

    move-result-object p0

    .line 112
    const-class v4, Ljava/net/DatagramSocket;

    const-string v5, "impl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getSocket()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "join"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Ljava/net/InetAddress;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getSocket()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/DatagramSocket;

    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 120
    :goto_2
    new-instance v4, Lcom/koushikdutta/async/dns/Dns$1;

    invoke-direct {v4, p0}, Lcom/koushikdutta/async/dns/Dns$1;-><init>(Lcom/koushikdutta/async/AsyncDatagramSocket;)V

    .line 128
    new-instance v5, Lcom/koushikdutta/async/dns/Dns$2;

    invoke-direct {v5, p0, p2, v4, p3}, Lcom/koushikdutta/async/dns/Dns$2;-><init>(Lcom/koushikdutta/async/AsyncDatagramSocket;ZLcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {p0, v5}, Lcom/koushikdutta/async/AsyncDatagramSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    if-nez p2, :cond_6

    .line 151
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    aput-object v0, v1, v2

    invoke-direct {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncDatagramSocket;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_3

    .line 153
    :cond_6
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x14e9

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v4

    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 158
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    if-eqz p2, :cond_7

    .line 160
    invoke-interface {p3, p0, v3}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method

.method public static lookup(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static multicastLookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, p1, v0, p2}, Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static multicastLookup(Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "Lcom/koushikdutta/async/dns/DnsResponse;",
            ">;)",
            "Lcom/koushikdutta/async/future/Cancellable;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/koushikdutta/async/dns/Dns;->multicastLookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    return-object p0
.end method

.method private static setFlag(III)I
    .locals 0

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static setQuery(I)I
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0, v0}, Lcom/koushikdutta/async/dns/Dns;->setFlag(III)I

    move-result p0

    return p0
.end method

.method private static setRecursion(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 39
    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/dns/Dns;->setFlag(III)I

    move-result p0

    return p0
.end method
