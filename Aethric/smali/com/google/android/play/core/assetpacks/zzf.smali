.class public final synthetic Lcom/google/android/play/core/assetpacks/zzf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzf;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzf;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzf;->zza:Lcom/google/android/play/core/assetpacks/zzf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/zzl;->zze(Ljava/lang/Exception;)V

    return-void
.end method
