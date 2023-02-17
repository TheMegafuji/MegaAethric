.class final Lcom/google/android/gms/maps/zzm;
.super Lcom/google/android/gms/maps/internal/zzy;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzm;->zza:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzm;->zza:Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlay;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/GroundOverlay;-><init>(Lcom/google/android/gms/internal/maps/zzo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;->onGroundOverlayClick(Lcom/google/android/gms/maps/model/GroundOverlay;)V

    return-void
.end method
