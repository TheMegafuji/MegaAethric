.class public final synthetic Lcom/google/android/gms/internal/games/zzct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/games/zzct;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games/zzct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzct;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games/zzct;->zza:Lcom/google/android/gms/internal/games/zzct;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v0, Lcom/google/android/gms/internal/games/zzcy;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzbz;->zzF()Lcom/google/android/gms/games/Player;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
