.class public final Lcom/google/android/play/core/splitinstall/zzr;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/zzr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static zza()Lcom/google/android/play/core/splitinstall/zzq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/zzr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/zzq;

    return-object v0
.end method

.method public static zzb(Lcom/google/android/play/core/splitinstall/zzq;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/zzr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
