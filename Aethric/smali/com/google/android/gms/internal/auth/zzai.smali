.class final Lcom/google/android/gms/internal/auth/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;


# static fields
.field private static final zza:Landroid/accounts/Account;


# instance fields
.field private final zzb:Lcom/google/android/gms/common/api/Status;

.field private final zzc:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "DUMMY_NAME"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzai;->zza:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzai;->zzb:Lcom/google/android/gms/common/api/Status;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/auth/zzai;->zza:Landroid/accounts/Account;

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzai;->zzc:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzai;->zzc:Landroid/accounts/Account;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzai;->zzb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
