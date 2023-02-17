.class public final synthetic Lcom/google/android/gms/internal/games/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzcv;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzcv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzcv;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzcv;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzcv;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcv;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v3, Lcom/google/android/gms/internal/games/zzcy;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzbz;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzce;

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzce;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
