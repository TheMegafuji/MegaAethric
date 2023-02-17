.class final Lcom/google/android/play/core/appupdate/zzw;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:I

.field private final zzb:Z


# direct methods
.method synthetic constructor <init>(IZLcom/google/android/play/core/appupdate/zzv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    return-void
.end method


# virtual methods
.method public final allowAssetPackDeletion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    return v0
.end method

.method public final appUpdateType()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    iget v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->allowAssetPackDeletion()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/16 v1, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v1, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AppUpdateOptions{appUpdateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", allowAssetPackDeletion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
