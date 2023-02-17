.class public final Lcom/google/android/gms/wallet/WalletConstants;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/WalletConstants$PaymentCardRecognitionType;,
        Lcom/google/android/gms/wallet/WalletConstants$TotalPriceStatus;,
        Lcom/google/android/gms/wallet/WalletConstants$PaymentMethodTokenizationType;,
        Lcom/google/android/gms/wallet/WalletConstants$CardClass;,
        Lcom/google/android/gms/wallet/WalletConstants$PaymentMethod;,
        Lcom/google/android/gms/wallet/WalletConstants$BillingAddressFormat;,
        Lcom/google/android/gms/wallet/WalletConstants$CardNetwork;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_WALLET_OPTIMIZATION:Ljava/lang/String; = "com.google.android.gms.wallet.ENABLE_WALLET_OPTIMIZATION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BILLING_ADDRESS_FORMAT_FULL:I = 0x1

.field public static final BILLING_ADDRESS_FORMAT_MIN:I = 0x0

.field public static final CARD_CLASS_CREDIT:I = 0x1

.field public static final CARD_CLASS_DEBIT:I = 0x2

.field public static final CARD_CLASS_PREPAID:I = 0x3

.field public static final CARD_CLASS_UNKNOWN:I = 0x0

.field public static final CARD_NETWORK_AMEX:I = 0x1

.field public static final CARD_NETWORK_DISCOVER:I = 0x2

.field public static final CARD_NETWORK_INTERAC:I = 0x6

.field public static final CARD_NETWORK_JCB:I = 0x3

.field public static final CARD_NETWORK_MASTERCARD:I = 0x4

.field public static final CARD_NETWORK_OTHER:I = 0x3e8

.field public static final CARD_NETWORK_VISA:I = 0x5

.field public static final ENVIRONMENT_PRODUCTION:I = 0x1

.field public static final ENVIRONMENT_SANDBOX:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENVIRONMENT_STRICT_SANDBOX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENVIRONMENT_TEST:I = 0x3

.field public static final ERROR_CODE_APP_LABEL_UNAVAILABLE:I = 0x19f

.field public static final ERROR_CODE_AUTHENTICATION_FAILURE:I = 0x19b

.field public static final ERROR_CODE_BUYER_ACCOUNT_ERROR:I = 0x199

.field public static final ERROR_CODE_DEVELOPER_ERROR:I = 0xa

.field public static final ERROR_CODE_ILLEGAL_CALLER:I = 0x19e

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x8

.field public static final ERROR_CODE_INVALID_PARAMETERS:I = 0x194

.field public static final ERROR_CODE_INVALID_TRANSACTION:I = 0x19a

.field public static final ERROR_CODE_MERCHANT_ACCOUNT_ERROR:I = 0x195

.field public static final ERROR_CODE_SERVICE_UNAVAILABLE:I = 0x192

.field public static final ERROR_CODE_SPENDING_LIMIT_EXCEEDED:I = 0x196
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_CODE_UNKNOWN:I = 0x19d

.field public static final ERROR_CODE_UNSUPPORTED_API_VERSION:I = 0x19c

.field public static final ERROR_CODE_USER_CANCELLED:I = 0x1a0

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

.field public static final EXTRA_IS_READY_TO_PAY:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_IS_READY_TO_PAY"

.field public static final EXTRA_IS_USER_PREAUTHORIZED:Ljava/lang/String; = "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

.field public static final METADATA_TAG_WALLET_API_ENABLED:Ljava/lang/String; = "com.google.android.gms.wallet.api.enabled"

.field public static final PAYMENT_CARD_RECOGNITION_TYPE_OCR:I = 0x1

.field public static final PAYMENT_METHOD_CARD:I = 0x1

.field public static final PAYMENT_METHOD_TOKENIZATION_TYPE_DIRECT:I = 0x3

.field public static final PAYMENT_METHOD_TOKENIZATION_TYPE_NETWORK_TOKEN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAYMENT_METHOD_TOKENIZATION_TYPE_PAYMENT_GATEWAY:I = 0x1

.field public static final PAYMENT_METHOD_TOKENIZED_CARD:I = 0x2

.field public static final PAYMENT_METHOD_UNKNOWN:I = 0x0

.field public static final RESULT_ERROR:I = 0x1

.field public static final THEME_DARK:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_HOLO_DARK:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_HOLO_LIGHT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_LIGHT:I = 0x1

.field public static final TOTAL_PRICE_STATUS_ESTIMATED:I = 0x2

.field public static final TOTAL_PRICE_STATUS_FINAL:I = 0x3

.field public static final TOTAL_PRICE_STATUS_NOT_CURRENTLY_KNOWN:I = 0x1

.field public static final zza:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "ACCOUNT_NO_WALLET"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/wallet/WalletConstants;->zza:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
