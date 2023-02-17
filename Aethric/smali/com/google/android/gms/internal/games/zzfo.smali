.class public abstract Lcom/google/android/gms/internal/games/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzfo;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/games/zzfn;
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfo;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfn;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfn;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfo;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfn;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfo;->zza()Lcom/google/android/gms/internal/games/zzfn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzfo;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfo;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfn;

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzfn;->zzc(Ljava/lang/String;I)V

    return-void
.end method
