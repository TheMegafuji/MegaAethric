.class public final synthetic Lcom/google/android/gms/internal/games/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:J

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzbo;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/games/zzbo;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzbo;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzbo;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/games/zzbo;->zzb:J

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzbo;->zzc:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzbz;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p1, Lcom/google/android/gms/internal/games/zzbt;->zza:I

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbz;->zzaY(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
