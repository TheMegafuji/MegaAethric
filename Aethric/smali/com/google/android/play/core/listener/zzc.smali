.class public abstract Lcom/google/android/play/core/listener/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field protected final zza:Lcom/google/android/play/core/internal/zzag;

.field protected final zzb:Ljava/util/Set;

.field private final zzc:Landroid/content/IntentFilter;

.field private final zzd:Landroid/content/Context;

.field private zze:Lcom/google/android/play/core/listener/zzb;

.field private volatile zzf:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/play/core/internal/zzag;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    iput-object p1, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    iput-object p2, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 2
    invoke-static {p3}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    return-void
.end method

.method private final zzb()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/play/core/listener/zzb;

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/listener/zzb;-><init>(Lcom/google/android/play/core/listener/zzc;Lcom/google/android/play/core/listener/zza;)V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    iget-object v2, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 3
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    .line 5
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized zze()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "clearListeners"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzf(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "registerListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "Registered Play Core listener should not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "unregisterListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "Unregistered Play Core listener should not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzi(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/listener/StateUpdatedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
