.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:J

.field private final zze:J

.field private final zzf:Ljava/lang/String;

.field private final zzg:Landroid/net/Uri;

.field private final zzh:Landroid/net/Uri;

.field private final zzi:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zza:J

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzb:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzc:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzd:J

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zze:J

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzf:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzg:Landroid/net/Uri;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzh:Landroid/net/Uri;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    move-object v0, v1

    .line 9
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzj:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzk:Ljava/lang/String;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzl:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Rank"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayRank"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Score"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayScore"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "IconImageUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "HiResImageUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiResImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    :goto_0
    const-string v2, "Player"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScoreTag"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzc(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzc(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getDisplayRank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayRank(Landroid/database/CharArrayBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzb:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDisplayScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayScore(Landroid/database/CharArrayBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getRank()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zza:J

    return-wide v0
.end method

.method public final getRawScore()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzd:J

    return-wide v0
.end method

.method public final getScoreHolder()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public final getScoreHolderDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzf:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzf:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getScoreHolderHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzh:Landroid/net/Uri;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getScoreHolderHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzl:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreHolderIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzg:Landroid/net/Uri;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getScoreHolderIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzi:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzk:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zze:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
