.class final Lcom/google/android/gms/internal/drive/zznd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zznd$zza;,
        Lcom/google/android/gms/internal/drive/zznd$zzb;,
        Lcom/google/android/gms/internal/drive/zznd$zzc;,
        Lcom/google/android/gms/internal/drive/zznd$zzd;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzni:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzog:Z

.field private static final zzuc:Lsun/misc/Unsafe;

.field private static final zzvy:Z

.field private static final zzvz:Z

.field private static final zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

.field private static final zzwb:Z

.field private static final zzwc:J

.field private static final zzwd:J

.field private static final zzwe:J

.field private static final zzwf:J

.field private static final zzwg:J

.field private static final zzwh:J

.field private static final zzwi:J

.field private static final zzwj:J

.field private static final zzwk:J

.field private static final zzwl:J

.field private static final zzwm:J

.field private static final zzwn:J

.field private static final zzwo:J

.field private static final zzwp:J

.field private static final zzwq:I

.field static final zzwr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 141
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    const-class v5, Lcom/google/android/gms/internal/drive/zznd;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/drive/zznd;->logger:Ljava/util/logging/Logger;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzff()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbs()Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzni:Ljava/lang/Class;

    .line 144
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzvy:Z

    .line 145
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzvz:Z

    .line 146
    sget-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbr()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    sget-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzvy:Z

    if-eqz v5, :cond_1

    .line 150
    new-instance v6, Lcom/google/android/gms/internal/drive/zznd$zzb;

    sget-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/drive/zznd$zzb;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 151
    :cond_1
    sget-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzvz:Z

    if-eqz v5, :cond_3

    .line 152
    new-instance v6, Lcom/google/android/gms/internal/drive/zznd$zza;

    sget-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/drive/zznd$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 154
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/drive/zznd$zzc;

    sget-object v5, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/drive/zznd$zzc;-><init>(Lsun/misc/Unsafe;)V

    .line 155
    :cond_3
    :goto_0
    sput-object v6, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzfh()Z

    move-result v5

    sput-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzwb:Z

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzfg()Z

    move-result v5

    sput-boolean v5, Lcom/google/android/gms/internal/drive/zznd;->zzog:Z

    .line 158
    const-class v5, [B

    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/google/android/gms/internal/drive/zznd;->zzwc:J

    .line 159
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/google/android/gms/internal/drive/zznd;->zzwd:J

    .line 160
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/drive/zznd;->zzwe:J

    .line 161
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/drive/zznd;->zzwf:J

    .line 162
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/drive/zznd;->zzwg:J

    .line 163
    invoke-static {v2}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/drive/zznd;->zzwh:J

    .line 164
    invoke-static {v2}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/drive/zznd;->zzwi:J

    .line 165
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/drive/zznd;->zzwj:J

    .line 166
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/drive/zznd;->zzwk:J

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/drive/zznd;->zzwl:J

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/drive/zznd;->zzwm:J

    .line 169
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->zzi(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/drive/zznd;->zzwn:J

    .line 170
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/drive/zznd;->zzwo:J

    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzfi()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 172
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    if-nez v1, :cond_4

    goto :goto_1

    .line 173
    :cond_4
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzws:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 v0, -0x1

    .line 174
    :goto_2
    sput-wide v0, Lcom/google/android/gms/internal/drive/zznd;->zzwp:J

    .line 175
    sget-wide v0, Lcom/google/android/gms/internal/drive/zznd;->zzwc:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/google/android/gms/internal/drive/zznd;->zzwq:I

    .line 176
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->zzwr:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza([BJ)B
    .locals 3

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/drive/zznd;->zzwc:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzx(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static zza(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 117
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 120
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JD)V
    .locals 6

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zza(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JF)V
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zza(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JI)V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JJ)V
    .locals 6

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzws:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JZ)V
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zza(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zza([BJB)V
    .locals 3

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/drive/zznd;->zzwc:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zze(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static zzb(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 122
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 125
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzb(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 129
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzc(Ljava/lang/Object;JB)V
    .locals 0

    .line 135
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzc(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JB)V
    .locals 0

    .line 136
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JZ)V
    .locals 0

    .line 139
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zzb(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic zze(Ljava/lang/Object;JZ)V
    .locals 0

    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzfd()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->zzog:Z

    return v0
.end method

.method static zzfe()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->zzwb:Z

    return v0
.end method

.method static zzff()Lsun/misc/Unsafe;
    .locals 1

    .line 38
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzne;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static zzfg()Z
    .locals 8

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 46
    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    .line 47
    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    .line 48
    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 49
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 50
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    .line 51
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    .line 52
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    .line 53
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    .line 54
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbr()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    .line 57
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    .line 58
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    .line 59
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    .line 60
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    .line 61
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    .line 62
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    .line 63
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    .line 64
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 67
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeArrayOperations"

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static zzfh()Z
    .locals 9

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 72
    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    .line 73
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzfi()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_1

    return v3

    .line 76
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbr()Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    .line 78
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    .line 79
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    .line 80
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    .line 81
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    .line 82
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    .line 83
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    .line 84
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    .line 85
    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    const/4 v1, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v1, v2, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static zzfi()Ljava/lang/reflect/Field;
    .locals 3

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzh(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzuc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzi(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 7
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->zzog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzws:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzj(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 10
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->zzog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzws:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzj(Ljava/lang/Object;J)I
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzj(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zzk(Ljava/lang/Object;J)J
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzk(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 90
    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->zzbr()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 92
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->zzni:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 93
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 94
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 95
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 96
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 97
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 98
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    .line 99
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    .line 100
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method static zzl(Ljava/lang/Object;J)Z
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzl(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzm(Ljava/lang/Object;J)F
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzm(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzn(Ljava/lang/Object;J)D
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzn(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->zzwa:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->zzws:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zzp(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 115
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzq(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 116
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzr(Ljava/lang/Object;J)Z
    .locals 0

    .line 127
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzp(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzs(Ljava/lang/Object;J)Z
    .locals 0

    .line 128
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzq(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzt(Ljava/lang/Object;J)B
    .locals 0

    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzp(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzu(Ljava/lang/Object;J)B
    .locals 0

    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzq(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzv(Ljava/lang/Object;J)Z
    .locals 0

    .line 137
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzr(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic zzw(Ljava/lang/Object;J)Z
    .locals 0

    .line 138
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzs(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method
