.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Z

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzc:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    iget-boolean v3, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzc:Z

    iget-boolean v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    iget-boolean v5, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zze:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IIZZZ)V

    return-object v6
.end method

.method public setCameraEnabled(Z)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzd:Z

    return-object p0
.end method

.method public setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzb:I

    return-object p0
.end method

.method public setMicEnabled(Z)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zze:Z

    return-object p0
.end method

.method public setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zza:I

    return-object p0
.end method
