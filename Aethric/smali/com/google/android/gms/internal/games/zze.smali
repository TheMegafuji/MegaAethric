.class public final synthetic Lcom/google/android/gms/internal/games/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zze;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zze;->zza:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p2, Lcom/google/android/gms/internal/games/zzn;->zza:I

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzaP(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    return-void
.end method
