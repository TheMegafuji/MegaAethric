.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$TimeSpan;,
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLLECTION_FRIENDS:I = 0x3

.field public static final COLLECTION_PUBLIC:I = 0x0

.field public static final NUM_SCORES_UNKNOWN:I = -0x1

.field public static final NUM_TIME_SPANS:I = 0x3

.field public static final PLAYER_RANK_UNKNOWN:I = -0x1

.field public static final PLAYER_SCORE_UNKNOWN:I = -0x1

.field public static final TIME_SPAN_ALL_TIME:I = 0x2

.field public static final TIME_SPAN_DAILY:I = 0x0

.field public static final TIME_SPAN_WEEKLY:I = 0x1


# virtual methods
.method public abstract getCollection()I
.end method

.method public abstract getDisplayPlayerRank()Ljava/lang/String;
.end method

.method public abstract getDisplayPlayerScore()Ljava/lang/String;
.end method

.method public abstract getNumScores()J
.end method

.method public abstract getPlayerRank()J
.end method

.method public abstract getPlayerScoreTag()Ljava/lang/String;
.end method

.method public abstract getRawPlayerScore()J
.end method

.method public abstract getTimeSpan()I
.end method

.method public abstract hasPlayerInfo()Z
.end method

.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Ljava/lang/String;
.end method
