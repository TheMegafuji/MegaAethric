.class public final synthetic Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic f$1:Landroidx/core/location/LocationListenerCompat;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$1:Landroidx/core/location/LocationListenerCompat;

    iput-object p3, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$1:Landroidx/core/location/LocationListenerCompat;

    iget-object v2, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$LocationListenerTransport$uRkkmmKS2vRRcHo24xZJXHu93pM;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->lambda$onProviderEnabled$6$LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    return-void
.end method
