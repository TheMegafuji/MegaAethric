.class public final Lcom/google/android/gms/internal/drive/zzfb;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzfb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzfb;",
        "Lcom/google/android/gms/internal/drive/zzfb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzfb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhp:Lcom/google/android/gms/internal/drive/zzfb;


# instance fields
.field private zzhd:I

.field private zzhe:I

.field private zzhg:J

.field private zzhi:B

.field private zzhm:Ljava/lang/String;

.field private zzhn:J

.field private zzho:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    .line 59
    const-class v1, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhe:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhm:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhn:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhg:J

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzho:I

    return-void
.end method

.method public static zza([BLcom/google/android/gms/internal/drive/zzjx;)Lcom/google/android/gms/internal/drive/zzfb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/drive/zzkq;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Lcom/google/android/gms/internal/drive/zzkk;[BLcom/google/android/gms/internal/drive/zzjx;)Lcom/google/android/gms/internal/drive/zzkk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/drive/zzfb;

    return-object p0
.end method

.method private final zza(J)V
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhg:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzfb;I)V
    .locals 0

    const/4 p1, 0x1

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->zzj(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzfb;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->zzf(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzfb;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public static zzan()Lcom/google/android/gms/internal/drive/zzfb$zza;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->zzcw()Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb$zza;

    return-object v0
.end method

.method static synthetic zzao()Lcom/google/android/gms/internal/drive/zzfb;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/drive/zzfb;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->zzl(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/drive/zzfb;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->zza(J)V

    return-void
.end method

.method private final zzd(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhm:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method private final zzf(J)V
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 20
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhn:J

    return-void
.end method

.method private final zzj(I)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhe:I

    return-void
.end method

.method private final zzl(I)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 28
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzho:I

    return-void
.end method


# virtual methods
.method public final getResourceId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhm:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzho:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 32
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfc;->zzhl:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 49
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    return-object v1

    .line 48
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_2

    .line 41
    const-class p2, Lcom/google/android/gms/internal/drive/zzfb;

    monitor-enter p2

    .line 42
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_1

    .line 44
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 45
    sput-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 46
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 38
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzho"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001\u0504\u0000\u0002\u0508\u0001\u0003\u0510\u0002\u0004\u0510\u0003\u0005\u0004\u0004"

    .line 37
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzfb;->zza(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfb$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfc;)V

    return-object p1

    .line 33
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzfb;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzal()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhn:J

    return-wide v0
.end method

.method public final zzam()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhg:J

    return-wide v0
.end method
