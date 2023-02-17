.class public final Lcom/google/android/gms/drive/Drive$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzaa:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final zzz:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/drive/Drive$zza;->zzaa:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/Drive$zza;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->zzaa:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$zza;->getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v3, "method_trace_filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v4, p1, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    .line 17
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v3, "bypass_initial_sync"

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 21
    iget-object v4, p1, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v3, "proxy_type"

    .line 23
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->zzaa:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v1, "method_trace_filename"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v2, "proxy_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    const-string v3, "bypass_initial_sync"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    iget-object v4, p0, Lcom/google/android/gms/drive/Drive$zza;->zzaa:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzh()Landroid/os/Bundle;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$zza;->zzz:Landroid/os/Bundle;

    return-object v0
.end method
