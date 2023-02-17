.class final Lcom/google/android/gms/games/internal/zzan;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzan;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzan;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 2
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 p1, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v5, v4}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/games/GameBuffer;->close()V

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzan;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, v5, p1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/games/GameBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_2
    new-array v2, p1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    .line 5
    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2
    :catch_0
    :goto_3
    throw v0
.end method
