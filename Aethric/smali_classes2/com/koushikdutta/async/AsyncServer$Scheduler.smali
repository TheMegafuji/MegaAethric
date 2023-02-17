.class Lcom/koushikdutta/async/AsyncServer$Scheduler;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Scheduler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
        ">;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$Scheduler;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I
    .locals 5

    .line 264
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    iget-wide v2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 266
    :cond_0
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    iget-wide p1, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 257
    check-cast p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$Scheduler;->compare(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I

    move-result p1

    return p1
.end method
