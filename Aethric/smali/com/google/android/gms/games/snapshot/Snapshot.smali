.class public interface abstract Lcom/google/android/gms/games/snapshot/Snapshot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/snapshot/Snapshot;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.end method

.method public abstract getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
.end method
