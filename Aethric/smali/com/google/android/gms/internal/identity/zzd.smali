.class public final Lcom/google/android/gms/internal/identity/zzd;
.super Lcom/google/android/gms/internal/identity/zzf;
.source "com.google.android.gms:play-services-identity@@17.0.1"


# instance fields
.field private final zza:I

.field private zzb:Landroid/app/Activity;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/identity/zzf;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/identity/zzd;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/identity/zzd;->zzb:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/identity/zzd;Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/identity/zzd;->zzb:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final zzc(ILandroid/os/Bundle;)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    const-string v1, "AddressClientImpl"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    new-instance p1, Landroid/content/Intent;

    .line 1
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/gms/internal/identity/zzd;->zzb:Landroid/app/Activity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/identity/zzd;->zza:I

    .line 3
    invoke-virtual {p2, v3, p1, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception settng pending result"

    .line 5
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 7
    :goto_0
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/identity/zzd;->zzb:Landroid/app/Activity;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget p2, p0, Lcom/google/android/gms/internal/identity/zzd;->zza:I

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Exception starting pending intent"

    .line 10
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 9
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/identity/zzd;->zzb:Landroid/app/Activity;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget p2, p0, Lcom/google/android/gms/internal/identity/zzd;->zza:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {p1, p2, v3, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    return-void

    :catch_2
    move-exception p1

    const-string p2, "Exception setting pending result"

    .line 14
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
