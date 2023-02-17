.class public abstract Lcom/google/android/gms/internal/auth-api-phone/zzf;
.super Lcom/google/android/gms/internal/auth-api-phone/zzb;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.1"

# interfaces
.implements Lcom/google/android/gms/internal/auth-api-phone/zzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/auth-api-phone/zzc;->zzc(Landroid/os/Parcel;)Z

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzf;->zzb(Lcom/google/android/gms/common/api/Status;Z)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
