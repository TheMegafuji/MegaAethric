.class public final synthetic Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;

    invoke-direct {v0}, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;-><init>()V

    sput-object v0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;->INSTANCE:Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$zMh1sPVITlcw-eMtdIvv_D4_SCM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->lambda$unregister$1(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
