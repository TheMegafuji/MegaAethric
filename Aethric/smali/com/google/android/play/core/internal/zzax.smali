.class public final Lcom/google/android/play/core/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/splitcompat/zza;

.field private zzb:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzax;->zza:Lcom/google/android/play/core/splitcompat/zza;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "versionCode"

    .line 3
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "versionCodeMajor"

    .line 4
    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    int-to-long v0, v0

    return-wide v0

    .line 9
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Couldn\'t parse versionCodeMajor to int: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Couldn\'t parse versionCode to int: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Manifest entry doesn\'t contain \'versionCode\' attribute."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Couldn\'t find manifest entry at top-level."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Manifest file needs to be loaded before parsing."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/play/core/splitcompat/zza;->zzc(Landroid/content/res/AssetManager;Ljava/io/File;)I

    move-result p2

    const-string v0, "AndroidManifest.xml"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
