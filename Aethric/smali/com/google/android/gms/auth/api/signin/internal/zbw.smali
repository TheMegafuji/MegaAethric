.class final Lcom/google/android/gms/auth/api/signin/internal/zbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic zba:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/zbv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbw;->zba:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbc;

    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zbw;->zba:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->getAllClients()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/auth/api/signin/internal/zbc;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object p1
.end method

.method public final bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbw;->zba:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I

    move-result p2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbb(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbw;->zba:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
