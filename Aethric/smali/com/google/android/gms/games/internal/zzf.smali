.class public final Lcom/google/android/gms/games/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field public static final zza:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zze;-><init>(Lcom/google/android/gms/games/internal/zzd;)V

    new-instance v1, Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/zzf;-><init>(Lcom/google/android/gms/games/internal/zze;)V

    sput-object v1, Lcom/google/android/gms/games/internal/zzf;->zza:Lcom/google/android/gms/games/internal/zzf;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/internal/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
