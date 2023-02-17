.class public final Lcom/google/android/play/core/tasks/Tasks;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->zzc(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/zzo;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/zzo;-><init>(Lcom/google/android/play/core/tasks/zzn;)V

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->zzd(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/zzp;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzo;->zza()V

    .line 7
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->zzc(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->zzc(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/zzo;

    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/zzo;-><init>(Lcom/google/android/play/core/tasks/zzn;)V

    .line 13
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->zzd(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/zzp;)V

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/tasks/zzo;->zzb(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->zzc(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/play/core/tasks/Task<",
            "*>;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->zzb(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/tasks/Task;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/tasks/zzm;

    .line 5
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    new-instance v1, Lcom/google/android/play/core/tasks/zzq;

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/play/core/tasks/zzq;-><init>(ILcom/google/android/play/core/tasks/zzm;)V

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/tasks/Task;

    .line 8
    invoke-static {v2, v1}, Lcom/google/android/play/core/tasks/Tasks;->zzd(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/zzp;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/zzm;->zzb(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static zzc(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzd(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/zzp;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
