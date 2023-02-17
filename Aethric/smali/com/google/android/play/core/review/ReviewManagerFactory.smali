.class public Lcom/google/android/play/core/review/ReviewManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/play/core/review/zzd;

    .line 2
    new-instance v1, Lcom/google/android/play/core/review/zzi;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/review/zzi;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/zzd;-><init>(Lcom/google/android/play/core/review/zzi;)V

    return-object v0
.end method
