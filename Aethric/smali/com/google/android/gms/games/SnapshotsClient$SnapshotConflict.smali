.class public final Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapshotConflict"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p2, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzc:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p4, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzc:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

.method public getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method
