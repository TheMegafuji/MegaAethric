.class public final Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;Lcom/google/android/gms/wallet/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    iget v0, v0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;->zza:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The paymentCardRecognitionType is required when creating a PaymentCardRecognitionIntentRequest."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    return-object v0
.end method
