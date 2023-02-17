.class final Lcom/google/android/gms/internal/games/zzdx;
.super Lcom/google/android/gms/internal/games/zzej;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field final synthetic zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzek;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdx;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdx;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/games/zzdx;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p6, p0, Lcom/google/android/gms/internal/games/zzdx;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzej;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzei;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdx;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzdx;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzdx;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzdx;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaM(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
