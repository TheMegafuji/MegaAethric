.class public final Lcom/google/android/play/core/internal/zzcn;
.super Lcom/google/android/play/core/internal/zzcm;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcm;

.field private final zzb:J

.field private final zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcm;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzcm;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzcn;->zza:Lcom/google/android/play/core/internal/zzcm;

    invoke-direct {p0, p2, p3}, Lcom/google/android/play/core/internal/zzcn;->zzd(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/play/core/internal/zzcn;->zzb:J

    add-long/2addr p1, p4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/internal/zzcn;->zzd(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/play/core/internal/zzcn;->zzc:J

    return-void
.end method

.method private final zzd(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzcn;->zza:Lcom/google/android/play/core/internal/zzcm;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/zzcm;->zza()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/internal/zzcn;->zza:Lcom/google/android/play/core/internal/zzcm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/zzcm;->zza()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zza()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/play/core/internal/zzcn;->zzc:J

    iget-wide v2, p0, Lcom/google/android/play/core/internal/zzcn;->zzb:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected final zzb(JJ)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Lcom/google/android/play/core/internal/zzcn;->zzb:J

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/internal/zzcn;->zzd(J)J

    move-result-wide p1

    add-long/2addr p3, p1

    .line 2
    invoke-direct {p0, p3, p4}, Lcom/google/android/play/core/internal/zzcn;->zzd(J)J

    move-result-wide p3

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzcn;->zza:Lcom/google/android/play/core/internal/zzcm;

    sub-long/2addr p3, p1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/internal/zzcm;->zzb(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
