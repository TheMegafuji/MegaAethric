.class final Lcom/google/android/gms/games/internal/zzbf;
.super Lcom/google/android/gms/games/internal/zzao;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# instance fields
.field private final zza:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final zzb:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/zzao;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbf;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbf;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    new-instance p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzbf;->zzb:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    .line 6
    throw p1
.end method


# virtual methods
.method public final getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbf;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    return-object v0
.end method

.method public final getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbf;->zzb:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method
