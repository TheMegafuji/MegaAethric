.class public abstract Lcom/google/android/gms/internal/play_billing/zzf;
.super Lcom/google/android/gms/internal/play_billing/zzi;
.source "com.android.billingclient:billing@@4.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.android.vending.billing.IInAppBillingServiceCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzb(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzj;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzj;->zzb(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzf;->zza(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
