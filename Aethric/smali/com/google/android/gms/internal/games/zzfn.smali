.class public abstract Lcom/google/android/gms/internal/games/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field final zzb:Ljava/lang/Object;

.field private zzc:Z

.field private final zzd:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzfn;->zzb:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/games/zzfu;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/games/zzfu;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzfn;->zza:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzd:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/games/zzfn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfn;->zzd()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected abstract zza(Ljava/lang/String;I)V
.end method

.method public final zzc(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzc:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zza:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/games/zzfm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/games/zzfm;-><init>(Lcom/google/android/gms/internal/games/zzfn;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzd:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzfn;->zzd:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzd:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/games/zzfn;->zza(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzfn;->zzd:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
