.class final Lcom/google/android/play/core/splitcompat/zzh;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/zzj;


# instance fields
.field final synthetic zza:Ljava/util/Set;

.field final synthetic zzb:Lcom/google/android/play/core/splitcompat/zzs;

.field final synthetic zzc:Lcom/google/android/play/core/splitcompat/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/zzm;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zzh;->zzc:Lcom/google/android/play/core/splitcompat/zzm;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/zzh;->zza:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/zzh;->zzb:Lcom/google/android/play/core/splitcompat/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzh;->zza:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/zzh;->zzc:Lcom/google/android/play/core/splitcompat/zzm;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/zzh;->zzb:Lcom/google/android/play/core/splitcompat/zzs;

    invoke-static {v1, p2, v2, p1}, Lcom/google/android/play/core/splitcompat/zzm;->zza(Lcom/google/android/play/core/splitcompat/zzm;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/zzs;Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
