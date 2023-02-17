.class public final Lcom/google/android/gms/auth/api/phone/SmsRetrieverStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.1"


# static fields
.field public static final API_NOT_AVAILABLE:I = 0x8e95

.field public static final PLATFORM_NOT_SUPPORTED:I = 0x8e94

.field public static final USER_PERMISSION_REQUIRED:I = 0x8e96


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "USER_PERMISSION_REQUIRED"

    return-object p0

    :pswitch_1
    const-string p0, "API_NOT_AVAILABLE"

    return-object p0

    :pswitch_2
    const-string p0, "PLATFORM_NOT_SUPPORTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8e94
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
