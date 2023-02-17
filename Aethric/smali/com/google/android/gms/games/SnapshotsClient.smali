.class public interface abstract Lcom/google/android/gms/games/SnapshotsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;,
        Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;,
        Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;,
        Lcom/google/android/gms/games/SnapshotsClient$ResolutionPolicy;
    }
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
.method public abstract commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract delete(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discardAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCoverImageSize()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDataSize()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract load(Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;I)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resolveConflict(Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resolveConflict(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end method
