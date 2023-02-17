.class public final Lcom/google/android/gms/internal/auth-api/zbba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"


# static fields
.field public static final zba:Lcom/google/android/gms/common/Feature;

.field public static final zbb:Lcom/google/android/gms/common/Feature;

.field public static final zbc:Lcom/google/android/gms/common/Feature;

.field public static final zbd:Lcom/google/android/gms/common/Feature;

.field public static final zbe:Lcom/google/android/gms/common/Feature;

.field public static final zbf:Lcom/google/android/gms/common/Feature;

.field public static final zbg:Lcom/google/android/gms/common/Feature;

.field public static final zbh:Lcom/google/android/gms/common/Feature;

.field public static final zbi:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_begin_sign_in"

    const-wide/16 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zba:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_sign_out"

    const-wide/16 v4, 0x2

    .line 2
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbb:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_authorize"

    const-wide/16 v4, 0x1

    .line 3
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbc:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_revoke_access"

    .line 4
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbd:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_save_password"

    const-wide/16 v4, 0x4

    .line 5
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbe:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_get_sign_in_intent"

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbf:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_save_account_linking_token"

    const-wide/16 v2, 0x3

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbg:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_get_phone_number_hint_intent"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zbh:Lcom/google/android/gms/common/Feature;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zba:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbb:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbc:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbd:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbe:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbf:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbg:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbba;->zbi:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
