.class final Lcom/google/android/gms/internal/games/zzdf;
.super Lcom/google/android/gms/internal/games/zzdh;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdi;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lcom/google/android/gms/internal/games/zzdf;->zza:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/games/zzdh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzdf;->zza:Z

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzag(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V

    return-void
.end method
