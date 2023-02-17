.class final Lcom/google/android/play/core/tasks/zzm;
.super Lcom/google/android/play/core/tasks/Task;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/tasks/Task<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/play/core/tasks/zzh;

.field private zzc:Z

.field private zzd:Ljava/lang/Object;

.field private zze:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/tasks/zzh;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzh;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    return-void
.end method

.method private final zze()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/zzci;->zzb(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzf()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/zzci;->zzb(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/Task;)V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    new-instance v2, Lcom/google/android/play/core/tasks/zzb;

    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/tasks/zzb;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzh;->zza(Lcom/google/android/play/core/tasks/zzg;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzg()V

    return-object p0
.end method

.method public final addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    new-instance v1, Lcom/google/android/play/core/tasks/zzb;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/zzb;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzh;->zza(Lcom/google/android/play/core/tasks/zzg;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzg()V

    return-object p0
.end method

.method public final addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/zzm;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-object p0
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    new-instance v1, Lcom/google/android/play/core/tasks/zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzh;->zza(Lcom/google/android/play/core/tasks/zzg;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzg()V

    return-object p0
.end method

.method public final addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/zzm;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-object p0
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    new-instance v1, Lcom/google/android/play/core/tasks/zzf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/zzf;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/zzh;->zza(Lcom/google/android/play/core/tasks/zzg;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzg()V

    return-object p0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zze()V

    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzd:Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    .line 2
    invoke-direct {v2, v1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TResultT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zze()V

    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzd:Ljava/lang/Object;

    .line 9
    monitor-exit v0

    return-object p1

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isSuccessful()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zza(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzf()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/zzm;->zzf()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzd:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/Task;)V

    return v1

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/zzm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzd:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/zzh;->zzb(Lcom/google/android/play/core/tasks/Task;)V

    return v1

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
