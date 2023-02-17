.class final Lcom/koushikdutta/async/dns/Dns$1;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "Dns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "Lcom/koushikdutta/async/dns/DnsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncDatagramSocket;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/dns/Dns$1;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cleanup()V

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/dns/Dns$1;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncDatagramSocket;->close()V

    return-void
.end method
