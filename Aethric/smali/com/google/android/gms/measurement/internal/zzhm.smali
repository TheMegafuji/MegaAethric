.class final Lcom/google/android/gms/measurement/internal/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhx;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhx;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgk;->zzt:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Lcom/google/android/gms/measurement/internal/zzhx;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zzl()Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->zzK:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzo(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 6
    throw v1

    :catchall_1
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
