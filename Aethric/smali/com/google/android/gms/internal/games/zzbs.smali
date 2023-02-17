.class public final synthetic Lcom/google/android/gms/internal/games/zzbs;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzbs;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/games/zzbs;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzbs;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbs;->zza:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/games/zzbs;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzbs;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p2, Lcom/google/android/gms/internal/games/zzbt;->zza:I

    .line 1
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzbz;->zzaW(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
