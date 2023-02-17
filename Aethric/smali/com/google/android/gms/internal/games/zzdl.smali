.class public final synthetic Lcom/google/android/gms/internal/games/zzdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field public final synthetic zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzdl;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzdl;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdl;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdl;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdl;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzdl;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzdl;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzdl;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p1, Lcom/google/android/gms/internal/games/zzds;->zza:I

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaN(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
