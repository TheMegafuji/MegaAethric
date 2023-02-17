.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;


# instance fields
.field private final zza:Lcom/google/android/gms/games/PlayerRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzc(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V

    return-object v0
.end method

.method public final getDisplayRank()Ljava/lang/String;
    .locals 1

    const-string v0, "display_rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayRank(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "display_rank"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDisplayScore()Ljava/lang/String;
    .locals 1

    const-string v0, "display_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayScore(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "display_score"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getRank()J
    .locals 2

    const-string v0, "rank"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRawScore()J
    .locals 2

    const-string v0, "raw_score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getScoreHolder()Lcom/google/android/gms/games/Player;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    return-object v0
.end method

.method public final getScoreHolderDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_display_name"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "external_player_id"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_display_name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getScoreHolderHiResImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getScoreHolderHiResImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreHolderIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_display_image_uri"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getScoreHolderIconImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "external_player_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_display_image_url"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->zza:Lcom/google/android/gms/games/PlayerRef;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreTag()Ljava/lang/String;
    .locals 1

    const-string v0, "score_tag"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestampMillis()J
    .locals 2

    const-string v0, "achieved_timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
