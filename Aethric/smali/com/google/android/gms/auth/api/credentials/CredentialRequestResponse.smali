.class public Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;
.super Lcom/google/android/gms/common/api/Response;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Response<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    invoke-interface {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    return-object v0
.end method
