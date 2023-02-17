.class public final synthetic Lcom/koushikdutta/async/util/-$$Lambda$IdleTimeout$P8KZUCN6rjLTPyK9vzYm_pHXlto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/util/IdleTimeout;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/util/IdleTimeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/-$$Lambda$IdleTimeout$P8KZUCN6rjLTPyK9vzYm_pHXlto;->f$0:Lcom/koushikdutta/async/util/IdleTimeout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/-$$Lambda$IdleTimeout$P8KZUCN6rjLTPyK9vzYm_pHXlto;->f$0:Lcom/koushikdutta/async/util/IdleTimeout;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/IdleTimeout;->lambda$cancel$0$IdleTimeout()V

    return-void
.end method
