.class final Lcom/google/android/gms/games/internal/zzar;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzbz;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzar;->zza:Lcom/google/android/gms/games/internal/zzbz;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzar;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzk(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2713

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzar;->zza:Lcom/google/android/gms/games/internal/zzbz;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzar;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzbz;->zzL(Lcom/google/android/gms/games/internal/zzbz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzar;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    .line 6
    invoke-direct {v4, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzar;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_2
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v2

    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    .line 7
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4
    :catch_0
    :goto_3
    throw p1
.end method
