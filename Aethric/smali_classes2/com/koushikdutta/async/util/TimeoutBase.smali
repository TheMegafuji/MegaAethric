.class public Lcom/koushikdutta/async/util/TimeoutBase;
.super Ljava/lang/Object;
.source "TimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;
    }
.end annotation


# instance fields
.field protected delay:J

.field protected handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->delay:J

    .line 46
    new-instance p2, Lcom/koushikdutta/async/util/TimeoutBase$2;

    invoke-direct {p2, p0, p1}, Lcom/koushikdutta/async/util/TimeoutBase$2;-><init>(Lcom/koushikdutta/async/util/TimeoutBase;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->delay:J

    .line 24
    new-instance p2, Lcom/koushikdutta/async/util/TimeoutBase$1;

    invoke-direct {p2, p0, p1}, Lcom/koushikdutta/async/util/TimeoutBase$1;-><init>(Lcom/koushikdutta/async/util/TimeoutBase;Lcom/koushikdutta/async/AsyncServer;)V

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->handlerish:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    return-void
.end method


# virtual methods
.method protected onCallback()V
    .locals 0

    return-void
.end method

.method public setDelay(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->delay:J

    return-void
.end method
