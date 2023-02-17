.class final Lcom/google/android/play/core/assetpacks/zzce;
.super Lcom/google/android/play/core/assetpacks/zzdg;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final zza:I

.field final zzb:J

.field final zzc:Ljava/lang/String;

.field final zzd:Ljava/lang/String;

.field final zze:I

.field final zzf:I

.field final zzg:I

.field final zzh:J

.field final zzi:I

.field final zzj:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/play/core/assetpacks/zzce;->zze:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    iput p10, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzg:I

    iput-wide p11, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzh:J

    iput p13, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzi:I

    iput-object p14, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzj:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzce;->zzg:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
