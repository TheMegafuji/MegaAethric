.class public abstract Lcom/google/android/play/core/assetpacks/AssetPackLocation;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/assetpacks/AssetPackLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/play/core/assetpacks/zzbm;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->zza:Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/play/core/assetpacks/AssetPackLocation;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->zza:Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    return-object v0
.end method


# virtual methods
.method public abstract assetsPath()Ljava/lang/String;
.end method

.method public abstract packStorageMethod()I
.end method

.method public abstract path()Ljava/lang/String;
.end method
