.class public final Lcom/google/android/gms/games/GamesStatusUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    sget v0, Lcom/google/android/gms/games/GamesClientStatusCodes;->NETWORK_ERROR_NO_DATA:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    move v1, v0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0x67f5

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0x67f4

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x67f3

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x67f2

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x67ef

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x67ee

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x67ed

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x67ec

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x67eb

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x67ea

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x67e9

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x67e8

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x67e5

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x67e4

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x67e3

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x67e2

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x67e1

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x67e0

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x67df

    goto/16 :goto_0

    :pswitch_13
    const/16 v1, 0x67de

    goto/16 :goto_0

    :pswitch_14
    const/16 v1, 0x67d8

    goto/16 :goto_0

    :pswitch_15
    const/16 v1, 0x67d7

    goto/16 :goto_0

    :pswitch_16
    const/16 v1, 0x67d6

    goto/16 :goto_0

    :pswitch_17
    const/16 v1, 0x67d5

    goto/16 :goto_0

    :pswitch_18
    const/16 v1, 0x67d4

    goto/16 :goto_0

    :pswitch_19
    const/16 v1, 0x67d0

    goto/16 :goto_0

    :pswitch_1a
    const/16 v1, 0x67cf

    goto/16 :goto_0

    :pswitch_1b
    const/16 v1, 0x67ce

    goto/16 :goto_0

    :pswitch_1c
    const/16 v1, 0x67cd

    goto/16 :goto_0

    :pswitch_1d
    const/16 v1, 0x67cc

    goto/16 :goto_0

    :pswitch_1e
    const/16 v1, 0x67cb

    goto/16 :goto_0

    :pswitch_1f
    const/16 v1, 0x67ca

    goto/16 :goto_0

    :pswitch_20
    const/16 v1, 0x67c3

    goto/16 :goto_0

    :pswitch_21
    const/16 v1, 0x67c2

    goto/16 :goto_0

    :pswitch_22
    const/16 v1, 0x67c1

    goto/16 :goto_0

    :pswitch_23
    const/16 v1, 0x67c0

    goto/16 :goto_0

    :pswitch_24
    const/16 v1, 0x67b8

    goto/16 :goto_0

    :pswitch_25
    const/16 v1, 0x67b7

    goto/16 :goto_0

    :pswitch_26
    const/16 v1, 0x67b6

    goto/16 :goto_0

    :pswitch_27
    const/16 v1, 0x67a8

    goto/16 :goto_0

    :pswitch_28
    const/16 v1, 0x67a7

    goto/16 :goto_0

    :pswitch_29
    const/16 v1, 0x67a6

    goto/16 :goto_0

    :pswitch_2a
    const/16 v1, 0x67a5

    goto/16 :goto_0

    :pswitch_2b
    const/16 v1, 0x67a4

    goto/16 :goto_0

    :pswitch_2c
    const/16 v1, 0x67a3

    goto/16 :goto_0

    :pswitch_2d
    const/16 v1, 0x67a2

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0x6850

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x684f

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x684e

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x684d

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0x684c

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0x681c

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x681a

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x6808

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x6807

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x6806

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x6805

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x6804

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x6803

    goto :goto_0

    :sswitch_d
    const/16 v1, 0x6802

    goto :goto_0

    :sswitch_e
    const/16 v1, 0x6801

    goto :goto_0

    :sswitch_f
    const/16 v1, 0x6800

    goto :goto_0

    :sswitch_10
    const/16 v1, 0x67ff

    goto :goto_0

    :sswitch_11
    const/16 v1, 0x67fe

    goto :goto_0

    :sswitch_12
    const/16 v1, 0x67fd

    goto :goto_0

    :sswitch_13
    const/16 v1, 0x67fc

    goto :goto_0

    :sswitch_14
    const/16 v1, 0x6798

    goto :goto_0

    :sswitch_15
    const/16 v1, 0x678d

    goto :goto_0

    :sswitch_16
    const/16 v1, 0x678c

    goto :goto_0

    :cond_0
    const/16 v1, 0x67ad

    goto :goto_0

    :cond_1
    const/16 v1, 0x67ac

    goto :goto_0

    :cond_2
    :sswitch_17
    const/16 v1, 0x678b

    goto :goto_0

    :cond_3
    const/16 v1, 0x678a

    goto :goto_0

    :cond_4
    const/16 v1, 0x6789

    goto :goto_0

    :cond_5
    const/16 v1, 0x6788

    goto :goto_0

    :cond_6
    const/16 v1, 0x6787

    goto :goto_0

    :cond_7
    const/16 v1, 0x6786

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_9

    goto :goto_1

    .line 4
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/GamesStatusCodes;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_8

    :pswitch_2e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    .line 9
    :goto_1
    :pswitch_2f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_17
        0x8 -> :sswitch_16
        0x9 -> :sswitch_15
        0x1f4 -> :sswitch_14
        0x2328 -> :sswitch_13
        0x2329 -> :sswitch_12
        0x232a -> :sswitch_11
        0x232b -> :sswitch_10
        0x232c -> :sswitch_f
        0x232e -> :sswitch_e
        0x2331 -> :sswitch_d
        0x2332 -> :sswitch_c
        0x2333 -> :sswitch_b
        0x2334 -> :sswitch_a
        0x2338 -> :sswitch_9
        0x2339 -> :sswitch_8
        0x233a -> :sswitch_7
        0x23f0 -> :sswitch_6
        0x23f2 -> :sswitch_5
        0x2710 -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_1
        0x2714 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbb8
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfa0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1770
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1964
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1b58
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1f40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
