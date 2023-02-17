.class public final Lcom/google/android/gms/auth/api/identity/Identity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCredentialSavingClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/CredentialSavingClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbao;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/zbc;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/zbc;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth-api/zbao;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbc;)V

    return-object v0
.end method

.method public static getCredentialSavingClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/CredentialSavingClient;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbao;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/zbc;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/zbc;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth-api/zbao;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/zbc;)V

    return-object v0
.end method

.method public static getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbay;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/zbn;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/zbn;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth-api/zbay;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbn;)V

    return-object v0
.end method

.method public static getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbay;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/zbn;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/zbn;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth-api/zbay;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/zbn;)V

    return-object v0
.end method
