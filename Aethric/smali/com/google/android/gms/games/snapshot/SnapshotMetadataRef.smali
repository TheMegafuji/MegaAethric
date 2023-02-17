.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# instance fields
.field private final zza:Lcom/google/android/gms/games/Game;

.field private final zzb:Lcom/google/android/gms/games/Player;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/GameRef;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->zza:Lcom/google/android/gms/games/Game;

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->zzb:Lcom/google/android/gms/games/Player;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzd(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    return-object v0
.end method

.method public final getCoverImageAspectRatio()F
    .locals 4

    const-string v0, "cover_icon_image_height"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "cover_icon_image_width"

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    div-float/2addr v1, v0

    return v1
.end method

.method public final getCoverImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "cover_icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "cover_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "description"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    const-string v0, "device_name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->zza:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final getLastModifiedTimestamp()J
    .locals 2

    const-string v0, "last_modified_timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOwner()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->zzb:Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public final getPlayedTime()J
    .locals 2

    const-string v0, "duration"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getProgressValue()J
    .locals 2

    const-string v0, "progress_value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSnapshotId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_snapshot_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUniqueName()Ljava/lang/String;
    .locals 1

    const-string v0, "unique_name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasChangePending()Z
    .locals 1

    const-string v0, "pending_change_count"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzb(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzc(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
