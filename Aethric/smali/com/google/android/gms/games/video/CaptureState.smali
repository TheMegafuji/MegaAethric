.class public final Lcom/google/android/gms/games/video/CaptureState;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# instance fields
.field private final zza:Z

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Z

.field private final zze:Z


# direct methods
.method private constructor <init>(ZIIZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {p3, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/CaptureState;->zza:Z

    iput p2, p0, Lcom/google/android/gms/games/video/CaptureState;->zzb:I

    iput p3, p0, Lcom/google/android/gms/games/video/CaptureState;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/video/CaptureState;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/games/video/CaptureState;->zze:Z

    return-void
.end method

.method public static zza(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;
    .locals 8

    if-eqz p0, :cond_1

    const-string v0, "IsCapturing"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/video/CaptureState;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "CaptureMode"

    const/4 v4, -0x1

    .line 3
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "CaptureQuality"

    .line 4
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "IsOverlayVisible"

    .line 5
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v4, "IsPaused"

    .line 6
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object v2, v1

    move v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/video/CaptureState;-><init>(ZIIZZ)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCaptureMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzb:I

    return v0
.end method

.method public getCaptureQuality()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzc:I

    return v0
.end method

.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zza:Z

    return v0
.end method

.method public isOverlayVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzd:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zze:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zza:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsCapturing"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zzb:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CaptureMode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zzc:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CaptureQuality"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zzd:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsOverlayVisible"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/video/CaptureState;->zze:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsPaused"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
