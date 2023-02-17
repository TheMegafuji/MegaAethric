.class public abstract Lcom/google/android/gms/internal/drive/zzer;
.super Lcom/google/android/gms/internal/drive/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzeq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 61
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgf;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgf;)V

    goto/16 :goto_0

    .line 58
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgz;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgz;)V

    goto/16 :goto_0

    .line 55
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzem;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzem;)V

    goto/16 :goto_0

    .line 52
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/drive/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzff;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzff;)V

    goto/16 :goto_0

    .line 49
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/zza;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/drive/zza;)V

    goto/16 :goto_0

    .line 46
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfr;

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfr;)V

    goto/16 :goto_0

    .line 43
    :pswitch_7
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zzb(Z)V

    goto/16 :goto_0

    .line 40
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfj;

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfj;)V

    goto/16 :goto_0

    .line 37
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/internal/drive/zzga;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzga;

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzga;)V

    goto/16 :goto_0

    .line 34
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgd;

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgd;)V

    goto/16 :goto_0

    .line 30
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfx;

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzip;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/drive/zzio;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfx;Lcom/google/android/gms/internal/drive/zzio;)V

    goto :goto_0

    .line 27
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgh;

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzgh;)V

    goto :goto_0

    .line 24
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfv;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfv;)V

    goto :goto_0

    .line 22
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzer;->onSuccess()V

    goto :goto_0

    .line 19
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 16
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfh;

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfh;)V

    goto :goto_0

    .line 13
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfy;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfy;)V

    goto :goto_0

    .line 10
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfn;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfn;)V

    goto :goto_0

    .line 7
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/internal/drive/zzft;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzft;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzft;)V

    goto :goto_0

    .line 4
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfl;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzer;->zza(Lcom/google/android/gms/internal/drive/zzfl;)V

    .line 65
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
