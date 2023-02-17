.class final Lcom/koushikdutta/async/dns/Dns$2;
.super Ljava/lang/Object;
.source "Dns.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic val$multicast:Z

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncDatagramSocket;ZLcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-boolean p2, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$multicast:Z

    iput-object p3, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 133
    :try_start_0
    invoke-static {p2}, Lcom/koushikdutta/async/dns/DnsResponse;->parse(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/dns/DnsResponse;->source:Ljava/net/InetSocketAddress;

    .line 137
    iget-boolean v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$multicast:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->close()V

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void
.end method
