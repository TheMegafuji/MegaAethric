.class public final Lcom/google/android/gms/games/GamesClientStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-games@@23.1.0"


# static fields
.field public static final ACHIEVEMENT_NOT_INCREMENTAL:I = 0x67c2

.field public static final ACHIEVEMENT_UNKNOWN:I = 0x67c1

.field public static final ACHIEVEMENT_UNLOCKED:I = 0x67c3

.field public static final ACHIEVEMENT_UNLOCK_FAILURE:I = 0x67c0

.field public static final APP_MISCONFIGURED:I = 0x678c

.field public static final CONSENT_REQUIRED:I = 0x684f

.field public static final GAME_NOT_FOUND:I = 0x678d

.field public static final LICENSE_CHECK_FAILED:I = 0x678b

.field public static final NETWORK_ERROR_NO_DATA:I = 0x6788

.field public static final NETWORK_ERROR_OPERATION_FAILED:I = 0x678a

.field public static final OPERATION_IN_FLIGHT:I = 0x67ef

.field public static final SNAPSHOT_COMMIT_FAILED:I = 0x67cd

.field public static final SNAPSHOT_CONFLICT_MISSING:I = 0x67d0

.field public static final SNAPSHOT_CONTENTS_UNAVAILABLE:I = 0x67cc

.field public static final SNAPSHOT_CREATION_FAILED:I = 0x67cb

.field public static final SNAPSHOT_FOLDER_UNAVAILABLE:I = 0x67cf

.field public static final SNAPSHOT_NOT_FOUND:I = 0x67ca

.field public static final VIDEO_ALREADY_CAPTURING:I = 0x6801

.field public static final VIDEO_NOT_ACTIVE:I = 0x67fc

.field public static final VIDEO_OUT_OF_DISK_SPACE:I = 0x6802

.field public static final VIDEO_PERMISSION_ERROR:I = 0x67fe

.field public static final VIDEO_STORAGE_ERROR:I = 0x67ff

.field public static final VIDEO_UNEXPECTED_CAPTURE_ERROR:I = 0x6800

.field public static final VIDEO_UNSUPPORTED:I = 0x67fd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x67ac

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67ad

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "QUEST_NOT_STARTED"

    return-object p0

    :pswitch_1
    const-string p0, "QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :pswitch_2
    const-string p0, "MILESTONE_CLAIM_FAILED"

    return-object p0

    :pswitch_3
    const-string p0, "MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :pswitch_4
    const-string p0, "OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_5
    const-string p0, "REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_6
    const-string p0, "REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_7
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_8
    const-string p0, "PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_9
    const-string p0, "INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_a
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_b
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_c
    const-string p0, "MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_d
    const-string p0, "MATCH_NOT_FOUND"

    return-object p0

    :pswitch_e
    const-string p0, "MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_f
    const-string p0, "MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_10
    const-string p0, "MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_11
    const-string p0, "MATCH_ERROR_INVALID_MATCH_STATE"

    return-object p0

    :pswitch_12
    const-string p0, "MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :pswitch_13
    const-string p0, "MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :pswitch_14
    const-string p0, "MULTIPLAYER_ERROR_INVALID_OPERATION"

    return-object p0

    :pswitch_15
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_16
    const-string p0, "MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_17
    const-string p0, "MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_18
    const-string p0, "MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_19
    const-string p0, "SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :pswitch_1a
    const-string p0, "SNAPSHOT_FOLDER_UNAVAILABLE"

    return-object p0

    :pswitch_1b
    const-string p0, "SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_1c
    const-string p0, "SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_1d
    const-string p0, "SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_1e
    const-string p0, "SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_1f
    const-string p0, "SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_20
    const-string p0, "ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_21
    const-string p0, "ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_22
    const-string p0, "ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_23
    const-string p0, "ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_24
    const-string p0, "REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_25
    const-string p0, "REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_26
    const-string p0, "REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_27
    const-string p0, "AUTH_ERROR_SERVICE_CACHE_MISTAKE"

    return-object p0

    :pswitch_28
    const-string p0, "AUTH_ERROR_ACCOUNT_UNICORN"

    return-object p0

    :pswitch_29
    const-string p0, "AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_2a
    const-string p0, "AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_2b
    const-string p0, "AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_2c
    const-string p0, "AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_2d
    const-string p0, "AUTH_ERROR_HARD"

    return-object p0

    :sswitch_0
    const-string p0, "PLAYER_NOT_FOUND"

    return-object p0

    :sswitch_1
    const-string p0, "CONSENT_REQUIRED"

    return-object p0

    :sswitch_2
    const-string p0, "CLIENT_HIDDEN"

    return-object p0

    :sswitch_3
    const-string p0, "CLIENT_EMPTY"

    return-object p0

    :sswitch_4
    const-string p0, "CLIENT_LOADING"

    return-object p0

    :sswitch_5
    const-string p0, "VIDEO_CAPTURE_OVERLAY_VISIBLE"

    return-object p0

    :sswitch_6
    const-string p0, "VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_7
    const-string p0, "CAPTURE_ALREADY_PAUSED"

    return-object p0

    :sswitch_8
    const-string p0, "VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :sswitch_9
    const-string p0, "VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :sswitch_a
    const-string p0, "VIDEO_SCREEN_OFF"

    return-object p0

    :sswitch_b
    const-string p0, "VIDEO_NO_CAMERA"

    return-object p0

    :sswitch_c
    const-string p0, "VIDEO_NO_MIC"

    return-object p0

    :sswitch_d
    const-string p0, "VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :sswitch_e
    const-string p0, "VIDEO_ALREADY_CAPTURING"

    return-object p0

    :sswitch_f
    const-string p0, "VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :sswitch_10
    const-string p0, "VIDEO_STORAGE_ERROR"

    return-object p0

    :sswitch_11
    const-string p0, "VIDEO_PERMISSION_ERROR"

    return-object p0

    :sswitch_12
    const-string p0, "VIDEO_UNSUPPORTED"

    return-object p0

    :sswitch_13
    const-string p0, "VIDEO_NOT_ACTIVE"

    return-object p0

    :sswitch_14
    const-string p0, "RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :sswitch_15
    const-string p0, "GAME_NOT_FOUND"

    return-object p0

    :sswitch_16
    const-string p0, "APP_MISCONFIGURED"

    return-object p0

    :sswitch_17
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :sswitch_18
    const-string p0, "NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :sswitch_19
    const-string p0, "NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :sswitch_1a
    const-string p0, "NETWORK_ERROR_NO_DATA"

    return-object p0

    :sswitch_1b
    const-string p0, "NETWORK_ERROR_STALE_DATA"

    return-object p0

    :sswitch_1c
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_0
    const-string p0, "PLAYER_LEVEL_UP"

    return-object p0

    :cond_1
    const-string p0, "PLAYER_OOB_REQUIRED"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6786 -> :sswitch_1c
        0x6787 -> :sswitch_1b
        0x6788 -> :sswitch_1a
        0x6789 -> :sswitch_19
        0x678a -> :sswitch_18
        0x678b -> :sswitch_17
        0x678c -> :sswitch_16
        0x678d -> :sswitch_15
        0x6798 -> :sswitch_14
        0x67fc -> :sswitch_13
        0x67fd -> :sswitch_12
        0x67fe -> :sswitch_11
        0x67ff -> :sswitch_10
        0x6800 -> :sswitch_f
        0x6801 -> :sswitch_e
        0x6802 -> :sswitch_d
        0x6803 -> :sswitch_c
        0x6804 -> :sswitch_b
        0x6805 -> :sswitch_a
        0x6806 -> :sswitch_9
        0x6807 -> :sswitch_8
        0x6808 -> :sswitch_7
        0x681a -> :sswitch_6
        0x681c -> :sswitch_5
        0x684c -> :sswitch_4
        0x684d -> :sswitch_3
        0x684e -> :sswitch_2
        0x684f -> :sswitch_1
        0x6850 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x67a2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67b6
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x67c0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x67ca
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x67d4
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x67de
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
    .packed-switch 0x67e8
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
    .packed-switch 0x67f2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method
