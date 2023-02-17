.class public final Lcom/google/android/play/core/review/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zzb:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field zza:Lcom/google/android/play/core/internal/zzas;

.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/review/zzi;->zzb:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/review/zzi;->zzc:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 4
    new-instance v0, Lcom/google/android/play/core/internal/zzas;

    sget-object v4, Lcom/google/android/play/core/review/zzi;->zzb:Lcom/google/android/play/core/internal/zzag;

    sget-object v7, Lcom/google/android/play/core/review/zze;->zza:Lcom/google/android/play/core/review/zze;

    const/4 v8, 0x0

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/internal/zzas;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/zzag;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/zzan;Lcom/google/android/play/core/internal/zzam;)V

    iput-object v0, p0, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/internal/zzas;

    :cond_0
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/play/core/internal/zzag;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/review/zzi;->zzb:Lcom/google/android/play/core/internal/zzag;

    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/play/core/review/zzi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/review/zzi;->zzc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/play/core/tasks/Task;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/play/core/review/zzi;->zzb:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/play/core/review/zzi;->zzc:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "requestInAppReview (%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/internal/zzas;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/play/core/review/zzi;->zzb:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Play Store app is either not installed or not the official version"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/review/ReviewException;

    const/4 v1, -0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/zzi;

    .line 4
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/internal/zzas;

    new-instance v2, Lcom/google/android/play/core/review/zzf;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/review/zzf;-><init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/zzi;)V

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/zzas;->zzq(Lcom/google/android/play/core/internal/zzah;Lcom/google/android/play/core/tasks/zzi;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzi;->zza()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method
