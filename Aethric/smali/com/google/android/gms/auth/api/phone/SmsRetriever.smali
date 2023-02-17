.class public final Lcom/google/android/gms/auth/api/phone/SmsRetriever;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.1"


# static fields
.field public static final EXTRA_CONSENT_INTENT:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

.field public static final EXTRA_SIM_SUBSCRIPTION_ID:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.EXTRA_SIM_SUBSCRIPTION_ID"

.field public static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

.field public static final SEND_PERMISSION:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.permission.SEND"

.field public static final SMS_RETRIEVED_ACTION:Ljava/lang/String; = "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth-api-phone/zzab;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth-api-phone/zzab;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
