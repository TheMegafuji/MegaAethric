.class public abstract Lcom/google/android/gms/internal/measurement/zzcb;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "com.google.android.gms:play-services-measurement-base@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcc;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzcc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzcc;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzca;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1

    .line 4
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getSessionId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 4
    :pswitch_2
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 10
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_14

    :pswitch_3
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_14

    .line 15
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcb;->clearMeasurementEnabled(J)V

    goto/16 :goto_14

    :pswitch_5
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 21
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 23
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_3

    .line 24
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 25
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 27
    :pswitch_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v1

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->setDataCollectionEnabled(Z)V

    goto/16 :goto_14

    .line 30
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 32
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_5

    .line 33
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 36
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzcf;I)V

    goto/16 :goto_14

    .line 37
    :pswitch_9
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzb(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v1

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcb;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_14

    .line 40
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 41
    :cond_6
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 42
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_7

    .line 43
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 44
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_14

    .line 46
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 47
    :cond_8
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 48
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_9

    .line 49
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_4

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 50
    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_14

    .line 52
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 53
    :cond_a
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 54
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_b

    .line 55
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_5

    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 56
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_14

    .line 58
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcb;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_14

    :pswitch_e
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_6

    .line 67
    :cond_c
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 68
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_d

    .line 69
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_6

    :cond_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 70
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 71
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcb;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_14

    .line 73
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_7

    .line 75
    :cond_e
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 76
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_f

    .line 77
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_7

    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 78
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 79
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 80
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_14

    .line 81
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 83
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 85
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 88
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 89
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 91
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 93
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 97
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_14

    .line 98
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 100
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 101
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 102
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 104
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 105
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 106
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 108
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 109
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 110
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 112
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 113
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 114
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_8

    .line 115
    :cond_10
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 116
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_11

    .line 117
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_8

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 118
    :goto_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->generateEventId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 120
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 121
    :cond_12
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 122
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_13

    .line 123
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_9

    :cond_13
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 124
    :goto_9
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 126
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_a

    .line 127
    :cond_14
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 128
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_15

    .line 129
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_a

    :cond_15
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 130
    :goto_a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 132
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_b

    .line 133
    :cond_16
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 134
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_17

    .line 135
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_b

    :cond_17
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 136
    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 138
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 139
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 140
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzck;

    if-eqz v3, :cond_19

    .line 141
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzck;

    goto :goto_c

    :cond_19
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcj;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Landroid/os/IBinder;)V

    .line 142
    :goto_c
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzck;)V

    goto/16 :goto_14

    .line 144
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_d

    .line 145
    :cond_1a
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 146
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1b

    .line 147
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_d

    :cond_1b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 148
    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 150
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_e

    .line 151
    :cond_1c
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 152
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1d

    .line 153
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_e

    :cond_1d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 154
    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 156
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcb;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 162
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 163
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 164
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcb;->setSessionTimeoutDuration(J)V

    goto/16 :goto_14

    .line 165
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 167
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcb;->setMinimumSessionDuration(J)V

    goto/16 :goto_14

    .line 168
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 169
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 170
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcb;->resetAnalyticsData(J)V

    goto/16 :goto_14

    .line 171
    :pswitch_23
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 173
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_14

    .line 175
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_f

    .line 178
    :cond_1e
    invoke-interface {v5, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 179
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1f

    .line 180
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_f

    :cond_1f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 181
    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 182
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 183
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 185
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 187
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_14

    :pswitch_26
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 190
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 191
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_14

    .line 192
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 194
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 195
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 196
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_10

    .line 198
    :cond_20
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 199
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_21

    .line 200
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_10

    :cond_21
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 201
    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 202
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 203
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v5

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_11

    .line 207
    :cond_22
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 208
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_23

    .line 209
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_11

    :cond_23
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 210
    :goto_11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 211
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzcb;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_14

    .line 212
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 215
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v4

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 217
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcb;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_14

    .line 219
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_24

    move-object v6, v3

    goto :goto_13

    .line 223
    :cond_24
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 224
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_25

    .line 225
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_12

    :cond_25
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    :goto_12
    move-object v6, v2

    .line 226
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 227
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 228
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcb;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto :goto_14

    .line 229
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 231
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 232
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v4

    .line 233
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzg(Landroid/os/Parcel;)Z

    move-result v5

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 235
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzcb;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_14

    .line 237
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 238
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcl;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 240
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 241
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcb;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcl;J)V

    .line 242
    :goto_14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
