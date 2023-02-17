.class public final Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zba:Ljava/lang/String;

.field private zbb:Ljava/lang/String;

.field private zbc:Ljava/lang/String;

.field private zbd:Ljava/lang/String;

.field private zbe:Z

.field private zbf:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zba:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbd:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbe:Z

    iget v6, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbf:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v7
.end method

.method public filterByHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbb:Ljava/lang/String;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbd:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestVerifiedPhoneNumber(Z)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbe:Z

    return-object p0
.end method

.method public setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zba:Ljava/lang/String;

    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbc:Ljava/lang/String;

    return-object p0
.end method

.method public final zbb(I)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbf:I

    return-object p0
.end method
