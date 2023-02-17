.class final Lcom/google/android/gms/wallet/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Ljava/lang/Runnable;


# static fields
.field static final zza:Landroid/os/Handler;

.field static final zzb:Landroid/util/SparseArray;

.field private static final zzd:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field zzc:I

.field private zze:Lcom/google/android/gms/wallet/zzd;

.field private zzf:Lcom/google/android/gms/tasks/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzh;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wallet/zzh;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/wallet/zzc;->zza:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    .line 2
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wallet/zzc;->zzb:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/zzc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/wallet/zzc;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzc;-><init>()V

    sget-object v1, Lcom/google/android/gms/wallet/zzc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wallet/zzc;->zzc:I

    sget-object v2, Lcom/google/android/gms/wallet/zzc;->zzb:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/wallet/zzc;->zza:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zza()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method private final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/zzc;->zzf:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzc;->zze:Lcom/google/android/gms/wallet/zzd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/wallet/zzc;->zzb:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/zzc;->zzc:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v0, Lcom/google/android/gms/wallet/zzc;->zza:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzc;->zze:Lcom/google/android/gms/wallet/zzd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/wallet/zzc;->zzf:Lcom/google/android/gms/tasks/Task;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/zzd;->zza(Lcom/google/android/gms/wallet/zzd;Lcom/google/android/gms/tasks/Task;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/zzc;->zzf:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/zzc;->zzd()V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/wallet/zzc;->zzb:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/zzc;->zzc:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wallet/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzc;->zze:Lcom/google/android/gms/wallet/zzd;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/wallet/zzc;->zze:Lcom/google/android/gms/wallet/zzd;

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/wallet/zzd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/zzc;->zze:Lcom/google/android/gms/wallet/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/zzc;->zzd()V

    return-void
.end method
