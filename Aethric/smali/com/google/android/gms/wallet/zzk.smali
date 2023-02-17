.class public final Lcom/google/android/gms/wallet/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_biometric_auth_keys"

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zzb:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_payment_dynamic_update"

    const-wide/16 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_1p_initialize_buyflow"

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zzd:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_warm_up_ui_process"

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_get_setup_wizard_intent"

    const-wide/16 v4, 0x4

    .line 6
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "wallet_get_payment_card_recognition_intent"

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/wallet/zzk;->zzg:Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zza:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zzb:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zzc:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zzd:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zze:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/wallet/zzk;->zzf:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/wallet/zzk;->zzh:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
