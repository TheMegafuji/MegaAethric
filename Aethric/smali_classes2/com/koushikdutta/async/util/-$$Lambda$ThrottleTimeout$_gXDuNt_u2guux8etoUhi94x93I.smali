.class public final synthetic Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/util/ThrottleTimeout;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/util/ThrottleTimeout;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;->f$0:Lcom/koushikdutta/async/util/ThrottleTimeout;

    iput-object p2, p0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;->f$0:Lcom/koushikdutta/async/util/ThrottleTimeout;

    iget-object v1, p0, Lcom/koushikdutta/async/util/-$$Lambda$ThrottleTimeout$_gXDuNt_u2guux8etoUhi94x93I;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/ThrottleTimeout;->lambda$postThrottled$0$ThrottleTimeout(Ljava/lang/Object;)V

    return-void
.end method
