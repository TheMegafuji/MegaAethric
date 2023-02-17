.class final Lcom/google/android/play/core/review/zza;
.super Lcom/google/android/play/core/review/ReviewInfo;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Landroid/app/PendingIntent;

.field private final zzb:Z


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/review/ReviewInfo;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/play/core/review/zza;->zza:Landroid/app/PendingIntent;

    iput-boolean p2, p0, Lcom/google/android/play/core/review/zza;->zzb:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null pendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/review/ReviewInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    iget-object v1, p0, Lcom/google/android/play/core/review/zza;->zza:Landroid/app/PendingIntent;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/review/ReviewInfo;->zza()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/play/core/review/zza;->zzb:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/review/ReviewInfo;->zzb()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/zza;->zza:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-boolean v1, p0, Lcom/google/android/play/core/review/zza;->zzb:Z

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
    iget-object v0, p0, Lcom/google/android/play/core/review/zza;->zza:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/play/core/review/zza;->zzb:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ReviewInfo{pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isNoOp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/review/zza;->zza:Landroid/app/PendingIntent;

    return-object v0
.end method

.method final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/review/zza;->zzb:Z

    return v0
.end method
