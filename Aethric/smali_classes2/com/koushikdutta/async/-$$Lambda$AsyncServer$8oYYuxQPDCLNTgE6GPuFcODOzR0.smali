.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncServer$8oYYuxQPDCLNTgE6GPuFcODOzR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/ValueFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$8oYYuxQPDCLNTgE6GPuFcODOzR0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$8oYYuxQPDCLNTgE6GPuFcODOzR0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->lambda$createDatagram$5(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
