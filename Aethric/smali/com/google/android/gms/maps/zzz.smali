.class final Lcom/google/android/gms/maps/zzz;
.super Lcom/google/android/gms/maps/internal/zzao;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzz;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzao;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzz;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
