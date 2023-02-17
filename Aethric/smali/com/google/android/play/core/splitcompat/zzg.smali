.class final Lcom/google/android/play/core/splitcompat/zzg;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/zzj;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/splitcompat/zzs;

.field final synthetic zzb:Ljava/util/Set;

.field final synthetic zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic zzd:Lcom/google/android/play/core/splitcompat/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/zzm;Lcom/google/android/play/core/splitcompat/zzs;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zzg;->zzd:Lcom/google/android/play/core/splitcompat/zzm;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/zzg;->zza:Lcom/google/android/play/core/splitcompat/zzs;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/zzg;->zzb:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/zzg;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/zzg;->zzd:Lcom/google/android/play/core/splitcompat/zzm;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzg;->zza:Lcom/google/android/play/core/splitcompat/zzs;

    new-instance v1, Lcom/google/android/play/core/splitcompat/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/zzf;-><init>(Lcom/google/android/play/core/splitcompat/zzg;)V

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/play/core/splitcompat/zzm;->zzd(Lcom/google/android/play/core/splitcompat/zzm;Lcom/google/android/play/core/splitcompat/zzs;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/zzk;)V

    return-void
.end method
