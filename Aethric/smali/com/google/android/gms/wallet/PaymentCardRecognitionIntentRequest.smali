.class public Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;->zza:I

    return-void
.end method

.method public static builder()Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;-><init>(Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;Lcom/google/android/gms/wallet/zzx;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;-><init>(Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;Lcom/google/android/gms/wallet/zzx;)V

    iget-object v1, v0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;->zza:Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;->zza:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest$Builder;->build()Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentRequest;->zza:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
