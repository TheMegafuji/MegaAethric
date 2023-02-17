.class public Lcom/koushikdutta/ion/bitmap/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([BII)I
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/2addr p2, p1

    :goto_0
    add-int/lit8 v1, p1, 0x3

    const-string v2, "CameraExif"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-ge v1, p2, :cond_9

    add-int/lit8 v1, p1, 0x1

    .line 34
    aget-byte p1, p0, p1

    const/16 v7, 0xff

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_8

    .line 35
    aget-byte p1, p0, v1

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0xd8

    if-eq p1, v7, :cond_7

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v7, 0xd9

    if-eq p1, v7, :cond_8

    const/16 v7, 0xda

    if-ne p1, v7, :cond_3

    goto :goto_3

    .line 53
    :cond_3
    invoke-static {p0, v1, v6, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v7

    if-lt v7, v6, :cond_6

    add-int v8, v1, v7

    if-le v8, p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v9, 0xe1

    if-ne p1, v9, :cond_5

    if-lt v7, v5, :cond_5

    add-int/lit8 p1, v1, 0x2

    .line 61
    invoke-static {p0, p1, v3, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p1

    const v9, 0x45786966

    if-ne p1, v9, :cond_5

    add-int/lit8 p1, v1, 0x6

    .line 62
    invoke-static {p0, p1, v6, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p1

    if-nez p1, :cond_5

    add-int/lit8 p1, v1, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_4

    :cond_5
    move p1, v8

    goto :goto_0

    :cond_6
    :goto_1
    const-string p0, "Invalid length"

    .line 55
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    move p1, v1

    goto :goto_0

    :cond_8
    :goto_3
    move p1, v1

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-le v7, v5, :cond_13

    .line 76
    invoke-static {p0, p1, v3, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p2

    const v1, 0x49492a00    # 823968.0f

    if-eq p2, v1, :cond_a

    const v8, 0x4d4d002a    # 2.14958752E8f

    if-eq p2, v8, :cond_a

    const-string p0, "Invalid byte order"

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    goto :goto_5

    :cond_b
    const/4 p2, 0x0

    :goto_5
    add-int/lit8 v1, p1, 0x4

    .line 84
    invoke-static {p0, v1, v3, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v1

    add-int/2addr v1, v6

    const/16 v3, 0xa

    if-lt v1, v3, :cond_12

    if-le v1, v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr p1, v1

    sub-int/2addr v7, v1

    add-int/lit8 v1, p1, -0x2

    .line 93
    invoke-static {p0, v1, v6, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v1

    :goto_6
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_13

    const/16 v1, 0xc

    if-lt v7, v1, :cond_13

    .line 96
    invoke-static {p0, p1, v6, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result v1

    const/16 v8, 0x112

    if-ne v1, v8, :cond_11

    add-int/2addr p1, v5

    .line 99
    invoke-static {p0, p1, v6, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->pack([BIIZ)I

    move-result p0

    if-eq p0, v4, :cond_10

    const/4 p1, 0x3

    if-eq p0, p1, :cond_f

    const/4 p1, 0x6

    if-eq p0, p1, :cond_e

    if-eq p0, v5, :cond_d

    const-string p0, "Unsupported orientation"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    const/16 p0, 0x10e

    return p0

    :cond_e
    const/16 p0, 0x5a

    return p0

    :cond_f
    const/16 p0, 0xb4

    return p0

    :cond_10
    return v0

    :cond_11
    add-int/lit8 p1, p1, 0xc

    add-int/lit8 v7, v7, -0xc

    move v1, v3

    goto :goto_6

    :cond_12
    :goto_7
    const-string p0, "Invalid offset"

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v0
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 132
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
