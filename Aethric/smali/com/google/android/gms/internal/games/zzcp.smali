.class public final synthetic Lcom/google/android/gms/internal/games/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:I

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzcp;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games/zzcp;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games/zzcp;->zzc:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcp;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzcp;->zzb:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/games/zzcp;->zzc:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p1, Lcom/google/android/gms/internal/games/zzcy;->zza:I

    const/4 v4, 0x0

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaD(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V

    return-void
.end method