.class final Lcom/google/android/gms/internal/games/zzdb;
.super Lcom/google/android/gms/internal/games/zzdh;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdi;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/games/zzdb;->zza:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/games/zzdb;->zzb:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/games/zzdh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget v0, p0, Lcom/google/android/gms/internal/games/zzdb;->zza:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzdb;->zzb:Z

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzao(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;IZZ)V

    return-void
.end method
