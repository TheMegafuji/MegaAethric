.class public final Lcom/google/android/gms/games/internal/zzcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/games/internal/zzcg;


# instance fields
.field private volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzcg;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzcg;->zza:Lcom/google/android/gms/games/internal/zzcg;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzcg;->zzb:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/zzcg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzcg;->zza:Lcom/google/android/gms/games/internal/zzcg;

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzcg;->zzb:Z

    return-void
.end method
