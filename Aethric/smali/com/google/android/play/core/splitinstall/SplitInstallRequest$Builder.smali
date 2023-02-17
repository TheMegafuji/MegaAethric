.class public Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/splitinstall/SplitInstallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zzb:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/zzai;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zza:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zzb:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zzb:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zza:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addLanguage(Ljava/util/Locale;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;Lcom/google/android/play/core/splitinstall/zzaj;)V

    return-object v0
.end method
