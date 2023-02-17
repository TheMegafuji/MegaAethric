.class public final Lcom/google/android/play/core/splitinstall/testing/zzy;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lorg/xmlpull/v1/XmlPullParser;

.field private final zzc:Lcom/google/android/play/core/splitinstall/testing/zzs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "LocalTestingConfigParser"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {}, Lcom/google/android/play/core/splitinstall/testing/zzt;->zzc()Lcom/google/android/play/core/splitinstall/testing/zzs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzc:Lcom/google/android/play/core/splitinstall/testing/zzs;

    return-void
.end method

.method public static zza(Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/zzt;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "local_testing_config.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza:Lcom/google/android/play/core/splitinstall/testing/zzt;

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 6
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/testing/zzy;

    .line 7
    invoke-direct {v2, v0}, Lcom/google/android/play/core/splitinstall/testing/zzy;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzu;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/splitinstall/testing/zzu;-><init>(Lcom/google/android/play/core/splitinstall/testing/zzy;)V

    const-string v3, "local-testing-config"

    .line 8
    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/splitinstall/testing/zzy;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzx;)V

    iget-object v0, v2, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzc:Lcom/google/android/play/core/splitinstall/testing/zzs;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zze()Lcom/google/android/play/core/splitinstall/testing/zzt;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 10
    :goto_0
    sget-object v0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%s can not be parsed, using default. Error: %s"

    .line 12
    invoke-virtual {v0, p0, v2}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 13
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza:Lcom/google/android/play/core/splitinstall/testing/zzt;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/play/core/splitinstall/testing/zzy;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultErrorCode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzc:Lcom/google/android/play/core/splitinstall/testing/zzs;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/model/zza;->zza(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zza(I)Lcom/google/android/play/core/splitinstall/testing/zzs;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzw;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/testing/zzw;-><init>(Lcom/google/android/play/core/splitinstall/testing/zzy;)V

    const-string v1, "split-install-error"

    invoke-direct {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/zzy;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzx;)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/play/core/splitinstall/testing/zzy;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "module"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "errorCode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzc:Lcom/google/android/play/core/splitinstall/testing/zzs;

    .line 8
    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/model/zza;->zza(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/zzs;->zzd()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    return-void

    .line 6
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "split-install-error"

    aput-object v4, v3, v0

    const-string v0, "\'%s\' element does not contain \'module\'/\'errorCode\' attributes."

    .line 7
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v2, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p2}, Lcom/google/android/play/core/splitinstall/testing/zzx;->zza()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected \'%s\' tag but found \'%s\'."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzy;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method final synthetic zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/testing/zzv;-><init>(Lcom/google/android/play/core/splitinstall/testing/zzy;)V

    const-string v1, "split-install-errors"

    invoke-direct {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/zzy;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzx;)V

    return-void
.end method
