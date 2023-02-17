.class public Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Ljava/lang/String;

.field zzb:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/callback/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/callback/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zzb:Landroid/os/Bundle;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;

    const-string v1, "JSON cannot be null!"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getUpdatedSavedState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zzb:Landroid/os/Bundle;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public withUpdatedSavedState(Landroid/os/Bundle;)Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zzb:Landroid/os/Bundle;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/PaymentDataRequestUpdate;->zzb:Landroid/os/Bundle;

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
