.class public final synthetic Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/core/location/GnssStatusCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iput-object p2, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$2:Landroidx/core/location/GnssStatusCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/core/location/-$$Lambda$LocationManagerCompat$GpsStatusTransport$VPu-nedyTL-3FmVz96fRBB74pTQ;->f$2:Landroidx/core/location/GnssStatusCompat;

    invoke-virtual {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->lambda$onGpsStatusChanged$3$LocationManagerCompat$GpsStatusTransport(Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void
.end method
