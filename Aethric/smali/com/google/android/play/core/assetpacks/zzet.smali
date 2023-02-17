.class abstract Lcom/google/android/play/core/assetpacks/zzet;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb()J
.end method

.method abstract zzc()Ljava/lang/String;
.end method

.method abstract zzd()Z
.end method

.method abstract zze()Z
.end method

.method abstract zzf()[B
.end method

.method final zzg()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final zzh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzet;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
