.class public Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;
    }
.end annotation


# static fields
.field public static final DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;


# instance fields
.field private zzbl:I

.field private zzbm:Z

.field private zzbn:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;-><init>(IZI)V

    sput-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/TransferPreferences;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->getNetworkTypePreference()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->isRoamingAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbm:Z

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->getBatteryUsagePreference()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbn:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/TransferPreferences;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getNetworkPreference()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->isRoamingAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbm:Z

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getBatteryUsagePreference()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbn:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/TransferPreferences;
    .locals 4

    .line 19
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    iget-boolean v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbm:Z

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbn:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;-><init>(IZI)V

    return-object v0
.end method

.method public setBatteryUsagePreference(I)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .locals 0

    .line 17
    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbn:I

    return-object p0
.end method

.method public setIsRoamingAllowed(Z)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbm:Z

    return-object p0
.end method

.method public setNetworkPreference(I)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    return-object p0
.end method
