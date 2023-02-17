.class final Lcom/google/android/gms/internal/games/zzdv;
.super Lcom/google/android/gms/internal/games/zzea;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/snapshot/Snapshot;

.field final synthetic zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzek;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdv;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdv;->zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzea;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzdz;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdv;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzdv;->zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzO(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    return-void
.end method
