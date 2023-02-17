.class final Lcom/google/android/gms/auth/api/signin/internal/zbg;
.super Lcom/google/android/gms/auth/api/signin/internal/zbl;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# instance fields
.field final synthetic zba:Landroid/content/Context;

.field final synthetic zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zbg;->zba:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zbg;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbe;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbs;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zbf;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zbg;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbg;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbs;->zbe(Lcom/google/android/gms/auth/api/signin/internal/zbr;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
