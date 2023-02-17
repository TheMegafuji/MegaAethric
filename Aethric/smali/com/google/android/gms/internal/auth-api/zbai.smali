.class public final Lcom/google/android/gms/internal/auth-api/zbai;
.super Lcom/google/android/gms/internal/auth-api/zba;
.source "com.google.android.gms:play-services-auth@@20.3.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ISignInService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zbc(Lcom/google/android/gms/internal/auth-api/zby;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/zba;->zba()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/zbc;->zbc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;->zbb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zbd(Lcom/google/android/gms/internal/auth-api/zbab;Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/zba;->zba()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/zbc;->zbc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;->zbb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zbe(Lcom/google/android/gms/internal/auth-api/zbad;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/zba;->zba()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api/zbc;->zbc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;->zbb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zbf(Lcom/google/android/gms/common/api/internal/IStatusCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api/zba;->zba()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbd(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;->zbb(ILandroid/os/Parcel;)V

    return-void
.end method
