.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    }
.end annotation


# static fields
.field private static final zza:[Ljava/lang/String;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "leaderboardId"

    const-string v1, "playerId"

    const-string v2, "timeSpan"

    const-string v3, "hasResult"

    const-string v4, "rawScore"

    const-string v5, "formattedScore"

    const-string v6, "newBest"

    const-string v7, "scoreTag"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zza:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:I

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zze:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v3

    if-nez v2, :cond_1

    const-string v2, "leaderboardId"

    .line 6
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzb:Ljava/lang/String;

    const-string v2, "playerId"

    .line 7
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzc:Ljava/lang/String;

    const/4 v2, 0x0

    :cond_1
    const-string v4, "hasResult"

    .line 8
    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    const-string v5, "rawScore"

    .line 9
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v6

    const-string v5, "formattedScore"

    .line 10
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    const-string v5, "scoreTag"

    .line 11
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    const-string v5, "newBest"

    .line 12
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zze:Landroid/util/SparseArray;

    const-string v6, "timeSpan"

    .line 13
    invoke-virtual {p1, v6, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zze:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzc:Ljava/lang/String;

    const-string v2, "PlayerId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "StatusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zze:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/games/zzfl;->zza(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimesSpan"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "Result"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
