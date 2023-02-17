.class public final Lcom/google/android/gms/internal/auth/zzhr;
.super Lcom/google/android/gms/internal/auth/zzeu;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/zzhr;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/zzey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhr;->zzb:Lcom/google/android/gms/internal/auth/zzhr;

    const-class v1, Lcom/google/android/gms/internal/auth/zzhr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/auth/zzeu;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzeu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzeu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzeu;->zzc()Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhr;->zzd:Lcom/google/android/gms/internal/auth/zzey;

    return-void
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/auth/zzhr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhr;->zzb:Lcom/google/android/gms/internal/auth/zzhr;

    return-object v0
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/auth/zzhr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfa;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhr;->zzb:Lcom/google/android/gms/internal/auth/zzhr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/auth/zzeu;->zzb(Lcom/google/android/gms/internal/auth/zzeu;[B)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzhr;

    return-object p0
.end method


# virtual methods
.method protected final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhr;->zzb:Lcom/google/android/gms/internal/auth/zzhr;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/auth/zzhq;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/auth/zzhq;-><init>(Lcom/google/android/gms/internal/auth/zzhp;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/auth/zzhr;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/zzhr;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzd"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/auth/zzhr;->zzb:Lcom/google/android/gms/internal/auth/zzhr;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/auth/zzhr;->zzf(Lcom/google/android/gms/internal/auth/zzfw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzl()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhr;->zzd:Lcom/google/android/gms/internal/auth/zzey;

    return-object v0
.end method
