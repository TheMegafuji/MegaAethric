.class final Lcom/google/android/gms/internal/games/zzaj;
.super Lcom/google/android/gms/internal/games/zzan;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzar;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lcom/google/android/gms/internal/games/zzaj;->zza:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzan;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzam;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzaj;->zza:Z

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzai(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V

    return-void
.end method
