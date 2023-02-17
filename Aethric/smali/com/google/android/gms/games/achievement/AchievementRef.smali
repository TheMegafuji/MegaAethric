.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzf(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(Lcom/google/android/gms/games/achievement/Achievement;)V

    return-object v0
.end method

.method public final getAchievementId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_achievement_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentSteps()I
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "current_steps"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "description"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getFormattedCurrentSteps()Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "formatted_current_steps"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .locals 2

    const-string v0, "type"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "formatted_current_steps"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getFormattedTotalSteps()Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "formatted_total_steps"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .locals 2

    const-string v0, "type"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "formatted_total_steps"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getLastUpdatedTimestamp()J
    .locals 2

    const-string v0, "last_updated_timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "name"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public final getRevealedImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "revealed_icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "revealed_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    const-string v0, "state"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getTotalSteps()I
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    const-string v0, "total_steps"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getType()I
    .locals 1

    const-string v0, "type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getUnlockedImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "unlocked_icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "unlocked_icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXpValue()J
    .locals 2

    const-string v0, "instance_xp_value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-string v0, "definition_xp_value"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd(Lcom/google/android/gms/games/achievement/Achievement;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zze(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(Lcom/google/android/gms/games/achievement/Achievement;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()F
    .locals 2

    const-string v0, "rarity_percent"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/games/Player;
    .locals 4

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v3, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->mDataRow:I

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "external_game_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
