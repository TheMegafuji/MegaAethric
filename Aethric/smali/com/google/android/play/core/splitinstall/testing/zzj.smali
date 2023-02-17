.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzco;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/splitinstall/testing/zzj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzj;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/testing/zzj;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/zzj;->zza:Lcom/google/android/play/core/splitinstall/testing/zzj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zza:I

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza:Lcom/google/android/play/core/splitinstall/testing/zzt;

    return-object v0
.end method
