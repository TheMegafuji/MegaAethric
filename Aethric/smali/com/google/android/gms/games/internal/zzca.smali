.class public abstract Lcom/google/android/gms/games/internal/zzca;
.super Lcom/google/android/gms/internal/games/zzb;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzcb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_7

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_6

    const/16 p4, 0x2eeb

    if-eq p1, p4, :cond_5

    const/16 p4, 0x2eec

    if-eq p1, p4, :cond_4

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_3

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_2

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_1

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p1, 0x0

    return p1

    .line 75
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/Contents;

    .line 80
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzca;->zzq(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 82
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 83
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 86
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 88
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 96
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 98
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 99
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 100
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 101
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 102
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzp(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 105
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 106
    sget-object p4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/drive/Contents;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 108
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzs(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 115
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 116
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 117
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 118
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 119
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 120
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 121
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 122
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 123
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 124
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 126
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 130
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 132
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 133
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 134
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 135
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 136
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 138
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 139
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 140
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 141
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 142
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 143
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 144
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 145
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 146
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 147
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 149
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 150
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 151
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzk(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 1
    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2
    sget-object p1, Lcom/google/android/gms/games/internal/player/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/player/zze;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 4
    :sswitch_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 6
    :sswitch_2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 9
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 11
    :sswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzg(Landroid/os/Parcel;)Z

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 13
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 15
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 17
    :sswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 19
    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 21
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 23
    :sswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zze(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 27
    :sswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzd(I)V

    goto/16 :goto_0

    .line 30
    :sswitch_c
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 32
    :sswitch_d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 34
    :sswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 36
    :sswitch_f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 38
    :sswitch_10
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 40
    :sswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 42
    :sswitch_12
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 44
    :sswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 46
    :sswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 48
    :sswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 50
    :sswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 52
    :sswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 54
    :sswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 64
    :sswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 66
    :sswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzl(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 69
    :sswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 70
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 109
    :sswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 110
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzt(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 112
    :sswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 114
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 128
    :sswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 157
    :sswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 158
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 159
    :sswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 161
    :sswitch_21
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 163
    :sswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 164
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 165
    :sswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 167
    :sswitch_24
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 168
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 169
    :sswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 171
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzg(Landroid/os/Parcel;)Z

    .line 172
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 173
    :sswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :sswitch_27
    sget-object p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 179
    :sswitch_28
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 181
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 182
    :sswitch_29
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 185
    :sswitch_2a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 187
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 188
    :sswitch_2b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 190
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 191
    :sswitch_2c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 193
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 194
    :sswitch_2d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 196
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 197
    :sswitch_2e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 198
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 199
    :sswitch_2f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 200
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 201
    :sswitch_30
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 203
    :sswitch_31
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 204
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 205
    :sswitch_32
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 206
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 207
    :sswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 209
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 210
    :sswitch_34
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 211
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 212
    :sswitch_35
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 213
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 214
    :sswitch_36
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 215
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 216
    :sswitch_37
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzca;->zzo()V

    goto/16 :goto_0

    .line 217
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 218
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 219
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 220
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 221
    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 222
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzh(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 224
    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 225
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzg(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 227
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 228
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzm(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 230
    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 231
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzn(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 233
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    sget-object p4, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/common/data/DataHolder;

    .line 235
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 236
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzi(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 237
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 238
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 240
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 242
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 243
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzb(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 245
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 247
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 249
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzg(Landroid/os/Parcel;)Z

    move-result p4

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzu(IZ)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    sget-object p4, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/video/VideoCapabilities;

    .line 62
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 63
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzv(ILcom/google/android/gms/games/video/VideoCapabilities;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 73
    :cond_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 91
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 92
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzca;->zzr(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 94
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzca;->zzf(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 153
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 154
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 155
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zzb(Landroid/os/Parcel;)V

    .line 250
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1389
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
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_37
        0x1399 -> :sswitch_36
        0x139a -> :sswitch_35
        0x139b -> :sswitch_34
        0x139c -> :sswitch_33
        0x139d -> :sswitch_32
        0x139e -> :sswitch_31
        0x139f -> :sswitch_30
        0x13a0 -> :sswitch_2f
        0x13a1 -> :sswitch_2e
        0x13a2 -> :sswitch_2d
        0x13a3 -> :sswitch_2c
        0x13a4 -> :sswitch_2b
        0x13a5 -> :sswitch_2a
        0x13a6 -> :sswitch_29
        0x13a7 -> :sswitch_28
        0x13a8 -> :sswitch_27
        0x13a9 -> :sswitch_26
        0x13aa -> :sswitch_25
        0x13ab -> :sswitch_24
        0x13ac -> :sswitch_23
        0x13ad -> :sswitch_22
        0x13ae -> :sswitch_21
        0x13af -> :sswitch_20
        0x13b0 -> :sswitch_1f
        0x2329 -> :sswitch_1e
        0x2af9 -> :sswitch_1d
        0x2ee1 -> :sswitch_1c
        0x36b1 -> :sswitch_1b
        0x3a99 -> :sswitch_1a
        0x426a -> :sswitch_19
        0x4a40 -> :sswitch_18
        0x4a41 -> :sswitch_17
        0x4a42 -> :sswitch_16
        0x4e21 -> :sswitch_15
        0x4e22 -> :sswitch_14
        0x4e23 -> :sswitch_13
        0x4e24 -> :sswitch_12
        0x4e25 -> :sswitch_11
        0x4e26 -> :sswitch_10
        0x4e27 -> :sswitch_f
        0x4e28 -> :sswitch_e
        0x4e29 -> :sswitch_d
        0x4e2c -> :sswitch_c
        0x4e33 -> :sswitch_b
        0x4e34 -> :sswitch_a
        0x59d9 -> :sswitch_9
        0x59da -> :sswitch_8
        0x59db -> :sswitch_7
        0x59dc -> :sswitch_6
        0x59dd -> :sswitch_5
        0x5dc2 -> :sswitch_4
        0x61aa -> :sswitch_3
        0x61ab -> :sswitch_2
        0x61ac -> :sswitch_1
        0x61ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1f41
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2ee4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2eee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
