.class public Lcom/avalon/rpg/Index;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Index.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field static RC_SIGN_IN:I = 0x385


# instance fields
.field private appInterface:Lcom/avalon/rpg/AppInterface;

.field private appStarted:Ljava/lang/Boolean;

.field private billing:Lcom/android/billingclient/api/BillingClient;

.field public fcmToken:Ljava/lang/String;

.field public gapiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public installerPackageName:Ljava/lang/String;

.field private locationError:Landroid/widget/TextView;

.field public mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private productId:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private userId:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/avalon/rpg/Index;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/avalon/rpg/Index;->readSnapshot()V

    return-void
.end method

.method private readSnapshot()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    const-string v0, "snapshot"

    const-string v1, "reading"

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "orna"

    .line 665
    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/avalon/rpg/Index$10;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/Index$10;-><init>(Lcom/avalon/rpg/Index;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private startOrna()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    const v1, 0x7f0801dc

    .line 139
    invoke-virtual {p0, v1}, Lcom/avalon/rpg/Index;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    .line 142
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avalon/rpg/MessagingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/avalon/rpg/Index;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    const/4 v4, 0x3

    .line 151
    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/avalon/rpg/Index;->gapiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 157
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :catch_1
    invoke-static {v0}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 171
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 174
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 176
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 177
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 179
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 180
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 181
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 182
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 190
    new-instance v0, Lcom/avalon/rpg/AppInterface;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/AppInterface;-><init>(Lcom/avalon/rpg/Index;)V

    iput-object v0, p0, Lcom/avalon/rpg/Index;->appInterface:Lcom/avalon/rpg/AppInterface;

    .line 192
    iget-object v1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/avalon/rpg/Index$2;

    invoke-direct {v1, p0, p0}, Lcom/avalon/rpg/Index$2;-><init>(Lcom/avalon/rpg/Index;Lcom/avalon/rpg/Index;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/bundle.idx"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/avalon/rpg/Index;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 206
    new-instance v1, Lcom/avalon/rpg/Index$3;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/Index$3;-><init>(Lcom/avalon/rpg/Index;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getInstallerDetails()V
    .locals 2

    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/avalon/rpg/Index$4;

    invoke-direct {v1, p0, v0}, Lcom/avalon/rpg/Index$4;-><init>(Lcom/avalon/rpg/Index;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getSKUDetails(Ljava/lang/String;)V
    .locals 4

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    const-string v0, "inapp"

    .line 343
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 345
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    .line 346
    iget-object v2, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v3, Lcom/avalon/rpg/Index$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/avalon/rpg/Index$6;-><init>(Lcom/avalon/rpg/Index;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 7

    .line 388
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    .line 393
    iget-object v4, p0, Lcom/avalon/rpg/Index;->productId:Ljava/lang/String;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v5, "purchased "

    .line 397
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orna.billing"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "token: "

    .line 398
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "receipt: "

    .line 399
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p0}, Lcom/koushikdutta/ion/Ion;->with(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v4

    const v5, 0x7f100097

    invoke-virtual {p0, v5}, Lcom/avalon/rpg/Index;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/api/purchase/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/koushikdutta/ion/builder/LoadBuilder;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    const-string v5, "token"

    .line 402
    invoke-interface {v4, v5, v0}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    const-string v4, "order_id"

    .line 403
    invoke-interface {v0, v4, v1}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    iget-object v1, p0, Lcom/avalon/rpg/Index;->productId:Ljava/lang/String;

    const-string v4, "sku_id"

    .line 404
    invoke-interface {v0, v4, v1}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    iget-object v1, p0, Lcom/avalon/rpg/Index;->userId:Ljava/lang/String;

    const-string v4, "user_id"

    .line 405
    invoke-interface {v0, v4, v1}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    const-string v1, "source"

    const-string v4, "google"

    .line 406
    invoke-interface {v0, v1, v4}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    const-string v1, "receipt"

    .line 407
    invoke-interface {v0, v1, v3}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    const-string v1, "signature"

    .line 408
    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$U;

    .line 409
    invoke-interface {v0}, Lcom/koushikdutta/ion/builder/Builders$Any$U;->asJsonObject()Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    new-instance v1, Lcom/avalon/rpg/Index$7;

    invoke-direct {v1, p0, p1}, Lcom/avalon/rpg/Index$7;-><init>(Lcom/avalon/rpg/Index;Lcom/android/billingclient/api/Purchase;)V

    .line 410
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/future/ResponseFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 633
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 635
    sget p2, Lcom/avalon/rpg/Index;->RC_SIGN_IN:I

    if-ne p1, p2, :cond_3

    .line 636
    iget-object p1, p0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    return-void

    .line 639
    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    const-string p2, "orna.signin"

    const-string p3, "real.result"

    .line 640
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "real.result.success"

    .line 643
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 645
    iget-object p1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string p2, "javascript:(window.appinterface)?window.appinterface.googleGamesConnected():undefined"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/avalon/rpg/Index;->readSnapshot()V

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Could not sign you in"

    :cond_2
    const/4 p2, 0x1

    .line 654
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 475
    new-instance p1, Lcom/avalon/rpg/Index$8;

    invoke-direct {p1, p0}, Lcom/avalon/rpg/Index$8;-><init>(Lcom/avalon/rpg/Index;)V

    iput-object p1, p0, Lcom/avalon/rpg/Index;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 491
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/avalon/rpg/Index;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 492
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    .line 496
    new-instance v0, Lcom/avalon/rpg/Index$9;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/Index$9;-><init>(Lcom/avalon/rpg/Index;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 722
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConnectionFailed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 107
    invoke-virtual {p0, p1}, Lcom/avalon/rpg/Index;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/avalon/rpg/Index;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/avalon/rpg/Index;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->installerPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 112
    iput-object p1, p0, Lcom/avalon/rpg/Index;->installerPackageName:Ljava/lang/String;

    .line 114
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/avalon/rpg/Index$1;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/Index$1;-><init>(Lcom/avalon/rpg/Index;)V

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 128
    invoke-direct {p0}, Lcom/avalon/rpg/Index;->startOrna()V

    .line 130
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 627
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 628
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "orna.state"

    const-string v1, "onPause"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    .line 599
    iget-object v1, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pausing webview"

    .line 600
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 603
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :catch_0
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:(window.appinterface)?window.appinterface.pause():undefined"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appInterface:Lcom/avalon/rpg/AppInterface;

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {v0}, Lcom/avalon/rpg/AppInterface;->pauseMusic()V

    .line 613
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "orna.state"

    const-string v1, "onResume"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 563
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 564
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:(window.appinterface)?window.appinterface.resume():undefined"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 568
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "orna.state"

    const-string v1, "onStop"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 578
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 582
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 584
    iget-object v0, p0, Lcom/avalon/rpg/Index;->appInterface:Lcom/avalon/rpg/AppInterface;

    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {v0}, Lcom/avalon/rpg/AppInterface;->pauseMusic()V

    .line 588
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 380
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTrimMemory(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 320
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/avalon/rpg/Index;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public openPayment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 256
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "sku_id"

    .line 264
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->productId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string p1, "uuid"

    .line 270
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avalon/rpg/Index;->userId:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    iget-object p1, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object p2, p0, Lcom/avalon/rpg/Index;->productId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p2

    .line 287
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    const-string p1, "inapp"

    .line 288
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 290
    iget-object p1, p0, Lcom/avalon/rpg/Index;->billing:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p2

    new-instance v0, Lcom/avalon/rpg/Index$5;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/Index$5;-><init>(Lcom/avalon/rpg/Index;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const-string p2, "Google Pay is not available on this device"

    .line 278
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 280
    iget-object p1, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string p2, "javascript:window.appinterface.unblockUI()"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :catch_0
    return-void

    :catch_1
    move-exception p1

    .line 259
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "openPayment.parse"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public signInSilently()V
    .locals 4

    .line 682
    iget-object v0, p0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "orna.signin"

    const-string v1, "silent"

    .line 685
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 688
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 689
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 692
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 694
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    iput-object v1, p0, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v0, "orna.signin2"

    const-string v1, "silent.success"

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/avalon/rpg/Index;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:(window.appinterface)?window.appinterface.googleGamesConnected():undefined"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/avalon/rpg/Index$11;

    invoke-direct {v1, p0}, Lcom/avalon/rpg/Index$11;-><init>(Lcom/avalon/rpg/Index;)V

    .line 703
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method
