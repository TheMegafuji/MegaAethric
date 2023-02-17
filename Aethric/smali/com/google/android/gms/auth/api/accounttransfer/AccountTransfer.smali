.class public final Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field public static final ACTION_ACCOUNT_EXPORT_DATA_AVAILABLE:Ljava/lang/String; = "com.google.android.gms.auth.ACCOUNT_EXPORT_DATA_AVAILABLE"

.field public static final ACTION_ACCOUNT_IMPORT_DATA_AVAILABLE:Ljava/lang/String; = "com.google.android.gms.auth.ACCOUNT_IMPORT_DATA_AVAILABLE"

.field public static final ACTION_START_ACCOUNT_EXPORT:Ljava/lang/String; = "com.google.android.gms.auth.START_ACCOUNT_EXPORT"

.field public static final KEY_EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "key_extra_account_type"

.field public static final zza:Lcom/google/android/gms/common/api/Api;

.field public static final zzb:Lcom/google/android/gms/internal/auth/zzao;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/auth/zzao;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zze:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zzd:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/accounttransfer/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zze:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    sget-object v2, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zzd:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "AccountTransfer.ACCOUNT_TRANSFER_API"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zza:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zzb:Lcom/google/android/gms/internal/auth/zzao;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransfer;->zzc:Lcom/google/android/gms/internal/auth/zzao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountTransferClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/accounttransfer/zzr;)V

    return-object v0
.end method

.method public static getAccountTransferClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/accounttransfer/zzr;)V

    return-object v0
.end method
