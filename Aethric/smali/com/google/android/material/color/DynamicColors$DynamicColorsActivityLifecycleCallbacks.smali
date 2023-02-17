.class Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "DynamicColors.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicColorsActivityLifecycleCallbacks"
.end annotation


# instance fields
.field private final dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 386
    iget-object p2, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    .line 388
    invoke-virtual {p2}, Lcom/google/android/material/color/DynamicColorsOptions;->getThemeOverlay()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    .line 389
    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions;->getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    .line 390
    invoke-virtual {v1}, Lcom/google/android/material/color/DynamicColorsOptions;->getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    move-result-object v1

    .line 386
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/color/DynamicColors;->access$000(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
