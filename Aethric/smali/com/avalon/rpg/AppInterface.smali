.class public Lcom/avalon/rpg/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# static fields
.field private static final DEFAULT_VOLUME:F = 1.0f

.field private static final LOWER_VOLUME:F = 0.4f


# instance fields
.field achievementCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/avalon/rpg/Index;

.field currentMusicHint:Ljava/lang/String;

.field fxCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field musicCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field nowPlaying:Landroid/media/MediaPlayer;

.field private vib:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->currentMusicHint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->musicCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->achievementCache:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    const-string v0, "vibrator"

    .line 63
    invoke-virtual {p1, v0}, Lcom/avalon/rpg/Index;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/avalon/rpg/AppInterface;Lcom/google/android/gms/games/snapshot/Snapshot;[BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/avalon/rpg/AppInterface;->writeSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;[BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static bundleFromJSON(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 9

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 201
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 202
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_0

    new-array v3, v6, [Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_2

    .line 208
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [D

    .line 209
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_1

    .line 210
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 214
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 215
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 216
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_3

    .line 217
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-nez v3, :cond_5

    .line 222
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 225
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_6
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to transform json to bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private getMusicFile(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 7

    const-string v0, "audio/music/"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 286
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 287
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 288
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 289
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 290
    invoke-virtual {v6, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 p1, 0x1

    .line 291
    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private saveSnapshot(Ljava/lang/String;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v0, v0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v1, v0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "orna"

    .line 175
    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/avalon/rpg/AppInterface$3;

    invoke-direct {v1, p0, p1}, Lcom/avalon/rpg/AppInterface$3;-><init>(Lcom/avalon/rpg/AppInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private writeSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;[BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    .line 190
    new-instance p2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object p2

    .line 191
    iget-object p3, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v0, p3, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p3, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object p3

    .line 192
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public connectGame()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 125
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 126
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    sget v2, Lcom/avalon/rpg/Index;->RC_SIGN_IN:I

    invoke-virtual {v1, v0, v2}, Lcom/avalon/rpg/Index;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getIDToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v0, v0, Lcom/avalon/rpg/Index;->fcmToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSKUDetails(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-virtual {v0, p1}, Lcom/avalon/rpg/Index;->getSKUDetails(Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "orna.logevent"

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 243
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "logevent.parse"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 247
    invoke-static {v1}, Lcom/avalon/rpg/AppInterface;->bundleFromJSON(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 250
    :cond_0
    iget-object p2, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object p2, p2, Lcom/avalon/rpg/Index;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public longBuzz()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x2ee

    if-lt v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAppReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    new-instance v1, Lcom/avalon/rpg/AppInterface$1;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/AppInterface$1;-><init>(Lcom/avalon/rpg/AppInterface;)V

    invoke-virtual {v0, v1}, Lcom/avalon/rpg/Index;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openAchievements()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v1, v0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/avalon/rpg/AppInterface$4;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/AppInterface$4;-><init>(Lcom/avalon/rpg/AppInterface;)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public openLeaderboard()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public openPayment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    new-instance v1, Lcom/avalon/rpg/AppInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/avalon/rpg/AppInterface$2;-><init>(Lcom/avalon/rpg/AppInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avalon/rpg/Index;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openReview()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    new-instance v1, Lcom/avalon/rpg/AppInterface$5;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/AppInterface$5;-><init>(Lcom/avalon/rpg/AppInterface;)V

    invoke-virtual {v0, v1}, Lcom/avalon/rpg/Index;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pauseMusic()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public playMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->currentMusicHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "current"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    iget-object p1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->musicCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->musicCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0, p1}, Lcom/avalon/rpg/AppInterface;->getMusicFile(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/avalon/rpg/AppInterface;->musicCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_5

    .line 351
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 354
    :cond_5
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface;->currentMusicHint:Ljava/lang/String;

    .line 355
    iput-object v0, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    const-string p1, "reset"

    .line 357
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 358
    iget-object p1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 359
    iget-object p1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 360
    iget-object p1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 363
    :cond_6
    iget-object p1, p0, Lcom/avalon/rpg/AppInterface;->nowPlaying:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :goto_1
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 304
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    .line 305
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 306
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 307
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 308
    invoke-virtual {v8, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 309
    invoke-virtual {v8, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 310
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 318
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->fxCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public smallBuzz()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->vib:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sync(Ljava/lang/String;Z)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v0, v0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    iget-object v1, p0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v2, v1, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v1, v2}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    :try_start_1
    const-string v2, "reward_keys"

    .line 153
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 154
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 155
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/avalon/rpg/AppInterface;->achievementCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/avalon/rpg/AppInterface;->achievementCache:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v1, v3}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_2
    if-eqz p2, :cond_3

    .line 166
    invoke-direct {p0, p1}, Lcom/avalon/rpg/AppInterface;->saveSnapshot(Ljava/lang/String;)V

    :catch_1
    :cond_3
    return-void
.end method
