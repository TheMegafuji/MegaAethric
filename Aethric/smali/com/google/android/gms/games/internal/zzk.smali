.class final Lcom/google/android/gms/games/internal/zzk;
.super Lcom/google/android/gms/games/internal/zzbr;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzbr;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final zze(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzaf;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/games/video/CaptureState;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/zzaf;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzbr;->zzw(Ljava/lang/Object;)V

    return-void
.end method
