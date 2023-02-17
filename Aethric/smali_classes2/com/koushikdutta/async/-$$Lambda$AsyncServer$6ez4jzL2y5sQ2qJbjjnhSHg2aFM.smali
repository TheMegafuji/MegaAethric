.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic f$1:Lcom/koushikdutta/async/callback/ValueFunction;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$1:Lcom/koushikdutta/async/callback/ValueFunction;

    iput p3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$2:I

    iput-boolean p4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$3:Z

    iput-object p5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$4:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$0:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$1:Lcom/koushikdutta/async/callback/ValueFunction;

    iget v2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$2:I

    iget-boolean v3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$3:Z

    iget-object v4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$6ez4jzL2y5sQ2qJbjjnhSHg2aFM;->f$4:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/AsyncServer;->lambda$createDatagram$7$AsyncServer(Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V

    return-void
.end method
