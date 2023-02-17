.class public final Lcom/google/android/gms/games/leaderboard/zzb;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzf(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V

    return-object v0
.end method

.method public final getCollection()I
    .locals 1

    const-string v0, "collection"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getDisplayPlayerRank()Ljava/lang/String;
    .locals 1

    const-string v0, "player_display_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayPlayerScore()Ljava/lang/String;
    .locals 1

    const-string v0, "player_display_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNumScores()J
    .locals 2

    const-string v0, "total_scores"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayerRank()J
    .locals 2

    const-string v0, "player_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayerScoreTag()Ljava/lang/String;
    .locals 1

    const-string v0, "player_score_tag"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRawPlayerScore()J
    .locals 2

    const-string v0, "player_raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeSpan()I
    .locals 1

    const-string v0, "timespan"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final hasPlayerInfo()Z
    .locals 1

    const-string v0, "player_raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzd(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zze(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "top_page_token_next"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "window_page_token_next"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "window_page_token_prev"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
