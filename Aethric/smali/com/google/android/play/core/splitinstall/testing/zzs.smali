.class abstract Lcom/google/android/play/core/splitinstall/testing/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(I)Lcom/google/android/play/core/splitinstall/testing/zzs;
.end method

.method abstract zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;
.end method

.method abstract zzc()Lcom/google/android/play/core/splitinstall/testing/zzt;
.end method

.method abstract zzd()Ljava/util/Map;
.end method

.method final zze()Lcom/google/android/play/core/splitinstall/testing/zzt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zzd()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zzc()Lcom/google/android/play/core/splitinstall/testing/zzt;

    move-result-object v0

    return-object v0
.end method
