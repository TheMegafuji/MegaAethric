.class final Lcom/google/android/gms/games/internal/zzbx;
.super Lcom/google/android/gms/games/internal/zzao;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# instance fields
.field private final zza:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzao;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzbx;->zza:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 4
    throw v0
.end method


# virtual methods
.method public final getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzbx;->zza:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    return-object v0
.end method
