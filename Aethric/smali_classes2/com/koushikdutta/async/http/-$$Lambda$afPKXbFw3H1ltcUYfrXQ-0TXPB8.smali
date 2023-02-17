.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$afPKXbFw3H1ltcUYfrXQ-0TXPB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$afPKXbFw3H1ltcUYfrXQ-0TXPB8;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$afPKXbFw3H1ltcUYfrXQ-0TXPB8;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
