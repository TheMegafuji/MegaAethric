.class public interface abstract Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/Leaderboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadScoresResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
.end method

.method public abstract getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
.end method
