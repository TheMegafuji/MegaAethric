.class final Lcom/google/android/gms/games/internal/zzaq;
.super Lcom/google/android/gms/games/internal/zzao;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;


# instance fields
.field private final zza:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzao;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    return-void
.end method


# virtual methods
.method public final getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    return-object v0
.end method
