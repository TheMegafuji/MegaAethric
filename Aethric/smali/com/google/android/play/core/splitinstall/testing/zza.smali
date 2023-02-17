.class final Lcom/google/android/play/core/splitinstall/testing/zza;
.super Lcom/google/android/play/core/splitinstall/testing/zzs;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/testing/zzs;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I)Lcom/google/android/play/core/splitinstall/testing/zzs;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method final zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null splitInstallErrorCodeByModule"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc()Lcom/google/android/play/core/splitinstall/testing/zzt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzc;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/testing/zzc;-><init>(Ljava/lang/Integer;Ljava/util/Map;Lcom/google/android/play/core/splitinstall/testing/zzb;)V

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: splitInstallErrorCodeByModule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzd()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"splitInstallErrorCodeByModule\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
