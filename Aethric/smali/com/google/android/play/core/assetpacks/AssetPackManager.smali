.class public interface abstract Lcom/google/android/play/core/assetpacks/AssetPackManager;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# virtual methods
.method public abstract cancel(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;"
        }
    .end annotation
.end method

.method public abstract clearListeners()V
.end method

.method public abstract fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetLocation;
.end method

.method public abstract getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;
.end method

.method public abstract getPackLocations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/AssetPackLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackStates(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V
.end method

.method public abstract removePack(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V
.end method
