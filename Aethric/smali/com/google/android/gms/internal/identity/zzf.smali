.class public abstract Lcom/google/android/gms/internal/identity/zzf;
.super Lcom/google/android/gms/internal/identity/zzb;
.source "com.google.android.gms:play-services-identity@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/identity/zzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/identity/zzb;-><init>(Ljava/lang/String;)V

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

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/identity/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/identity/zzf;->zzc(ILandroid/os/Bundle;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
