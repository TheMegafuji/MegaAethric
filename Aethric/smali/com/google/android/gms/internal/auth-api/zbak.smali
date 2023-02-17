.class public final synthetic Lcom/google/android/gms/internal/auth-api/zbak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zba:Lcom/google/android/gms/internal/auth-api/zbao;

.field public final synthetic zbb:Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api/zbao;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zba:Lcom/google/android/gms/internal/auth-api/zbao;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zbb:Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zba:Lcom/google/android/gms/internal/auth-api/zbao;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zbb:Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbw;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zban;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth-api/zban;-><init>(Lcom/google/android/gms/internal/auth-api/zbao;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth-api/zbw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbz;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    .line 4
    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/internal/auth-api/zbz;->zbd(Lcom/google/android/gms/internal/auth-api/zbah;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)V

    return-void
.end method
