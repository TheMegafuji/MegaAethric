.class public final Lcom/google/android/gms/internal/drive/zzep;
.super Lcom/google/android/gms/internal/drive/zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzeo;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/drive/zzgm;)Landroid/content/IntentSender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xa

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 52
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzu;)Landroid/content/IntentSender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 58
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzgj;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 35
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 37
    sget-object p2, Lcom/google/android/gms/internal/drive/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/drive/zzec;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzab;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 96
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x18

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzex;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 63
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xd

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzgq;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 10
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object p3

    .line 74
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 75
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xf

    .line 78
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzgu;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 110
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x24

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzgw;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 101
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1c

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzhb;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 86
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x11

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzhd;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 115
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x26

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzhf;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzj;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object p3

    .line 67
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 68
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    .line 71
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzm;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 91
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x12

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzo;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 41
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 42
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzr;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 20
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzw;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 25
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzy;Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 30
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/drive/zzeq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x23

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
