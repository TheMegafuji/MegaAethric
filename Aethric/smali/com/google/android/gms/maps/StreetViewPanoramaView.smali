.class public Lcom/google/android/gms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/maps/zzas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/zzas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/zzas;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p2, Lcom/google/android/gms/maps/zzas;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/maps/zzas;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p2, Lcom/google/android/gms/maps/zzas;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/gms/maps/zzas;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    const-string v0, "context must not be null"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/zzas;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/zzas;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 1

    const-string v0, "callback must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getStreetViewPanoramaAsync() must be called on the main thread"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/zzas;->zza(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/zzas;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/zzas;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->showGooglePlayUnavailableMessage(Landroid/widget/FrameLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onLowMemory()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/zzas;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zza:Lcom/google/android/gms/maps/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/zzas;->onStop()V

    return-void
.end method
