.class final Lcom/google/android/gms/maps/zzn;
.super Lcom/google/android/gms/maps/internal/zzw;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzn;->zza:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzn;->zza:Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Circle;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Circle;-><init>(Lcom/google/android/gms/internal/maps/zzl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;->onCircleClick(Lcom/google/android/gms/maps/model/Circle;)V

    return-void
.end method
