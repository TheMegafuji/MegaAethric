.class public abstract Lcom/google/android/gms/internal/drive/zzjr;
.super Lcom/google/android/gms/internal/drive/zzjb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzjr$zza;,
        Lcom/google/android/gms/internal/drive/zzjr$zzb;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzog:Z


# instance fields
.field zzoh:Lcom/google/android/gms/internal/drive/zzjt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-class v0, Lcom/google/android/gms/internal/drive/zzjr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjr;->logger:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzfd()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->zzog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzjs;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjr;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/drive/zzkx;)I
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkx;->zzcx()I

    move-result p1

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/drive/zzkx;)I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkx;->zzcx()I

    move-result p0

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .locals 2

    .line 129
    check-cast p0, Lcom/google/android/gms/internal/drive/zzit;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzit;->zzbm()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzn(Ljava/lang/Object;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzit;->zzo(I)V

    .line 136
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzab(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p0

    return p0
.end method

.method public static zzac(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzad(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzae(I)I
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzai(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p0

    return p0
.end method

.method public static zzaf(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzah(I)I
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzac(I)I

    move-result p0

    return p0
.end method

.method private static zzai(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzaj(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p0

    return p0
.end method

.method public static zzb(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzb(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(ID)I
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/drive/zzkx;)I
    .locals 2

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zza(ILcom/google/android/gms/internal/drive/zzkx;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/drive/zzlq;)I
    .locals 2

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(Lcom/google/android/gms/internal/drive/zzlq;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zza(Lcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILjava/lang/String;)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzm(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/drive/zzjc;)I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p0

    .line 121
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/drive/zzjr;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/drive/zzjr$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;-><init>([BII)V

    return-object v1
.end method

.method public static zzc(ILcom/google/android/gms/internal/drive/zzjc;)I
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 152
    check-cast p1, Lcom/google/android/gms/internal/drive/zzit;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->zzbm()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/drive/zzmf;->zzn(Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzit;->zzo(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(IZ)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/drive/zzlq;)I
    .locals 1

    .line 126
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzlq;->zzcx()I

    move-result p0

    .line 127
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzc([B)I
    .locals 1

    .line 123
    array-length p0, p0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic zzcc()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->zzog:Z

    return v0
.end method

.method public static zzd(IJ)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzp(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/drive/zzjc;)I
    .locals 2

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/drive/zzlq;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzlq;->zzcx()I

    move-result p0

    return p0
.end method

.method public static zzd(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzp(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(IJ)I
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzt(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzp(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(II)I
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzac(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(II)I
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzi(II)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzai(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzj(II)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzk(II)I
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzl(II)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzac(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzm(Ljava/lang/String;)I
    .locals 1

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zznf;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/drive/zznj; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 113
    array-length p0, p0

    .line 115
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzo(J)I
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzp(J)I

    move-result p0

    return p0
.end method

.method public static zzp(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static zzq(J)I
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzt(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzp(J)I

    move-result p0

    return p0
.end method

.method public static zzr(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzs(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method private static zzt(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final zza(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzn(J)V

    return-void
.end method

.method public final zza(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzaa(I)V

    return-void
.end method

.method public final zza(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IJ)V

    return-void
.end method

.method public final zza(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(II)V

    return-void
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/drive/zzlq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/drive/zznj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjr;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object p2, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 145
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzy(I)V

    const/4 p2, 0x0

    .line 146
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzjb;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/drive/zzjr$zzb; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 150
    throw p1

    :catch_1
    move-exception p1

    .line 149
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzaa(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->zzt(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->zza(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/drive/zzlq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzc(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(B)V

    return-void
.end method

.method public abstract zzca()I
.end method

.method public final zzcb()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->zzca()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzd([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zze(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzai(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(II)V

    return-void
.end method

.method public abstract zzf(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzm(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzt(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(J)V

    return-void
.end method

.method public abstract zzn(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzx(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzy(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzz(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzai(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzy(I)V

    return-void
.end method
