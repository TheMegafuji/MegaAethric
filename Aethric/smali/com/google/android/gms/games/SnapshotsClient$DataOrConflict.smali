.class public final Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataOrConflict"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    return-void
.end method


# virtual methods
.method public getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getConflict called when there is no conflict."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zza:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getData called when there is a conflict."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConflict()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
