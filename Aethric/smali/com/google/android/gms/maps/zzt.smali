.class final Lcom/google/android/gms/maps/zzt;
.super Lcom/google/android/gms/maps/internal/zzm;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzt;->zza:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzt;->zza:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
