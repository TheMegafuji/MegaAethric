.class public final Lcom/google/android/gms/internal/auth/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzht;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzb:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzc:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzd:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zze:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzf:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzg:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzh:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzi:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzj:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzk:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzl:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzm:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzn:Lcom/google/android/gms/internal/auth/zzdc;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "com.google.android.gms.auth_account"

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzcr;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zzb()Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zza()Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v0

    const-string v1, "getTokenRefactor__account_data_service_sample_percentage"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zza:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__account_data_service_tokenAPI_usable"

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzb:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__account_manager_timeout_seconds"

    const-wide/16 v5, 0x14

    .line 5
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzc:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__android_id_shift"

    const-wide/16 v7, 0x0

    .line 6
    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzd:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__authenticator_logic_improved"

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zze:Lcom/google/android/gms/internal/auth/zzdc;

    :try_start_0
    const-string v1, "getTokenRefactor__blocked_packages"

    const-string v8, "ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n"

    const/4 v9, 0x3

    .line 8
    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/auth/zzhr;->zzk([B)Lcom/google/android/gms/internal/auth/zzhr;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/auth/zzhu;->zza:Lcom/google/android/gms/internal/auth/zzhu;

    .line 9
    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/internal/auth/zzcz;->zzf(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzhu;)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzf:Lcom/google/android/gms/internal/auth/zzdc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getTokenRefactor__chimera_get_token_evolved"

    .line 11
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzg:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__clear_token_timeout_seconds"

    .line 12
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzh:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__default_task_timeout_seconds"

    .line 13
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzi:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gaul_accounts_api_evolved"

    .line 14
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzj:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gaul_token_api_evolved"

    .line 15
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzk:Lcom/google/android/gms/internal/auth/zzdc;

    const-wide/16 v5, 0x78

    const-string v1, "getTokenRefactor__get_token_timeout_seconds"

    .line 16
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzl:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gms_account_authenticator_evolved"

    .line 17
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzm:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zzn:Lcom/google/android/gms/internal/auth/zzdc;

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/AssertionError;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzhr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zzf:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzhr;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zzj:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zzk:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
