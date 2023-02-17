.class public final synthetic Lcom/google/android/gms/internal/games/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games/zzbj;->zza:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzbj;->zza:Z

    check-cast p1, Lcom/google/android/gms/games/internal/zzbz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v1, Lcom/google/android/gms/internal/games/zzbt;->zza:I

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zzbz;->zzas(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V

    return-void
.end method
