.class public final Lcom/google/android/gms/drive/DriveStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final DRIVE_CONTENTS_TOO_LARGE:I = 0x5e4

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVE_RATE_LIMIT_EXCEEDED:I = 0x5e3

.field public static final DRIVE_RESOURCE_NOT_AVAILABLE:I = 0x5de


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xbbc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DRIVE_INSUFFICIENT_SCOPES"

    return-object p0

    :pswitch_1
    const-string p0, "DRIVE_INAPPLICABLE_OPERATION"

    return-object p0

    :pswitch_2
    const-string p0, "DRIVE_RESOURCE_PERMISSION_FORBIDDEN"

    return-object p0

    :pswitch_3
    const-string p0, "DRIVE_CONTENTS_TOO_LARGE"

    return-object p0

    :pswitch_4
    const-string p0, "DRIVE_RATE_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_5
    const-string p0, "DRIVE_FULL_SYNC_REQUIRED"

    return-object p0

    :pswitch_6
    const-string p0, "DRIVE_REALTIME_INVALID_COMPOUND_OP"

    return-object p0

    :pswitch_7
    const-string p0, "DRIVE_REALTIME_CONCURRENT_CREATION"

    return-object p0

    :pswitch_8
    const-string p0, "DRIVE_RESOURCE_FORBIDDEN"

    return-object p0

    :pswitch_9
    const-string p0, "DRIVE_RESOURCE_NOT_AVAILABLE"

    return-object p0

    :pswitch_a
    const-string p0, "DRIVE_RESOURCE_ALREADY_EXISTS"

    return-object p0

    :cond_0
    const-string p0, "DRIVE_REALTIME_TOKEN_REFRESH_REQUIRED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5dd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
