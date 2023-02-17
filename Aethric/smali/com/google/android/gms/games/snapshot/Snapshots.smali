.class public interface abstract Lcom/google/android/gms/games/snapshot/Snapshots;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;,
        Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;,
        Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;,
        Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DISPLAY_LIMIT_NONE:I = -0x1

.field public static final EXTRA_SNAPSHOT_METADATA:Ljava/lang/String; = "com.google.android.gms.games.SNAPSHOT_METADATA"

.field public static final EXTRA_SNAPSHOT_NEW:Ljava/lang/String; = "com.google.android.gms.games.SNAPSHOT_NEW"

.field public static final RESOLUTION_POLICY_HIGHEST_PROGRESS:I = 0x4

.field public static final RESOLUTION_POLICY_LAST_KNOWN_GOOD:I = 0x2

.field public static final RESOLUTION_POLICY_LONGEST_PLAYTIME:I = 0x1

.field public static final RESOLUTION_POLICY_MANUAL:I = -0x1

.field public static final RESOLUTION_POLICY_MOST_RECENTLY_MODIFIED:I = 0x3


# virtual methods
.method public abstract commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract delete(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discardAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V
.end method

.method public abstract getMaxCoverImageSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.end method

.method public abstract getMaxDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.end method

.method public abstract getSelectSnapshotIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZZI)Landroid/content/Intent;
.end method

.method public abstract getSnapshotFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.end method

.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end method
