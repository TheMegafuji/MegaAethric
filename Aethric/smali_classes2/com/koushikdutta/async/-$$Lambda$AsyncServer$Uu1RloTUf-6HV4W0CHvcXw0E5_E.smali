.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$Uu1RloTUf-6HV4W0CHvcXw0E5_E;->f$1:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->lambda$run$2(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
