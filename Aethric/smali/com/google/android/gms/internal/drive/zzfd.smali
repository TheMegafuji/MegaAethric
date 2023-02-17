.class public final Lcom/google/android/gms/internal/drive/zzfd;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzfd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzfd;",
        "Lcom/google/android/gms/internal/drive/zzfd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzfd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhq:Lcom/google/android/gms/internal/drive/zzfd;


# instance fields
.field private zzhd:I

.field private zzhg:J

.field private zzhi:B

.field private zzhn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhn:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhg:J

    return-void
.end method

.method private final zza(J)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhd:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhg:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzfd;J)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfd;->zzf(J)V

    return-void
.end method

.method public static zzap()Lcom/google/android/gms/internal/drive/zzfd$zza;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->zzcw()Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfd$zza;

    return-object v0
.end method

.method static synthetic zzaq()Lcom/google/android/gms/internal/drive/zzfd;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/drive/zzfd;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfd;->zza(J)V

    return-void
.end method

.method private final zzf(J)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhd:I

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhn:J

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfe;->zzhl:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 30
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    return-object v1

    .line 29
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_2

    .line 22
    const-class p2, Lcom/google/android/gms/internal/drive/zzfd;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_1

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhn"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u0510\u0000\u0002\u0510\u0001"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzfd;->zza(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzfd$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfe;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    return-object p1

    nop

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
