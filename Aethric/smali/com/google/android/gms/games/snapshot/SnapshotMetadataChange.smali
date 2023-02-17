.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    return-void
.end method


# virtual methods
.method public abstract getCoverImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPlayedTimeMillis()Ljava/lang/Long;
.end method

.method public abstract getProgressValue()Ljava/lang/Long;
.end method

.method public abstract zza()Lcom/google/android/gms/common/data/BitmapTeleporter;
.end method
