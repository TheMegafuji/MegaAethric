.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;

    invoke-direct {v0}, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;->INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncServer$khwJG3K07wLwE1I9XWn7tuoM_Qc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/net/InetAddress;

    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->lambda$getByName$4([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
