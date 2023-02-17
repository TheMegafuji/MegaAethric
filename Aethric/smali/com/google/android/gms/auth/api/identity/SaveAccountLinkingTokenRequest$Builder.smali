.class public final Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zba:Landroid/app/PendingIntent;

.field private zbb:Ljava/lang/String;

.field private zbc:Ljava/lang/String;

.field private zbd:Ljava/util/List;

.field private zbe:Ljava/lang/String;

.field private zbf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zba:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Consent PendingIntent cannot be null"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbb:Ljava/lang/String;

    const-string v3, "auth_code"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Invalid tokenType"

    .line 3
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbc:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v3, "serviceId cannot be null or empty"

    .line 5
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbd:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "scopes cannot be null"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zba:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbd:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbe:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbf:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    return-object v0
.end method

.method public setConsentPendingIntent(Landroid/app/PendingIntent;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zba:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbd:Ljava/util/List;

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbc:Ljava/lang/String;

    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbb:Ljava/lang/String;

    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbe:Ljava/lang/String;

    return-object p0
.end method

.method public final zbb(I)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;->zbf:I

    return-object p0
.end method
