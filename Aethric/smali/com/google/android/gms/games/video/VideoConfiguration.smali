.class public final Lcom/google/android/gms/games/video/VideoConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/VideoConfiguration$Builder;,
        Lcom/google/android/gms/games/video/VideoConfiguration$ValidCaptureModes;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODE_FILE:I = 0x0

.field public static final CAPTURE_MODE_STREAM:I = 0x1

.field public static final CAPTURE_MODE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_CAPTURE_MODE:I = 0x2

.field public static final NUM_QUALITY_LEVEL:I = 0x4

.field public static final QUALITY_LEVEL_FULLHD:I = 0x3

.field public static final QUALITY_LEVEL_HD:I = 0x1

.field public static final QUALITY_LEVEL_SD:I = 0x0

.field public static final QUALITY_LEVEL_UNKNOWN:I = -0x1

.field public static final QUALITY_LEVEL_XHD:I = 0x2


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {p2, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zza:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zze:Z

    return-void
.end method

.method public static isValidCaptureMode(IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public static isValidQualityLevel(IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getCameraEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzd:Z

    return v0
.end method

.method public getCaptureMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzb:I

    return v0
.end method

.method public getMicEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zze:Z

    return v0
.end method

.method public getQualityLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zza:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->getQualityLevel()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->getCaptureMode()I

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->zzc:Z

    const/4 v1, 0x7

    .line 4
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->getCameraEnabled()Z

    move-result v0

    const/16 v1, 0x8

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->getMicEnabled()Z

    move-result v0

    const/16 v1, 0x9

    .line 6
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
