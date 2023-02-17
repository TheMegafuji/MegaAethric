.class final Lcom/google/android/play/core/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Ljava/nio/ByteBuffer;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:J

.field private final zze:Ljava/nio/ByteBuffer;


# direct methods
.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/play/core/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zze;->zza:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/google/android/play/core/internal/zze;->zzb:J

    iput-wide p4, p0, Lcom/google/android/play/core/internal/zze;->zzc:J

    iput-wide p6, p0, Lcom/google/android/play/core/internal/zze;->zzd:J

    iput-object p8, p0, Lcom/google/android/play/core/internal/zze;->zze:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/play/core/internal/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/zze;->zzb:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/play/core/internal/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/zze;->zzc:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/play/core/internal/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/internal/zze;->zzd:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/play/core/internal/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/zze;->zza:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/play/core/internal/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/zze;->zze:Ljava/nio/ByteBuffer;

    return-object p0
.end method
